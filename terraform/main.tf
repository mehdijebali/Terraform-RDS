terraform {
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.AWS_REGION
  default_tags {
    tags = local.default-tags
  }
}

data "aws_ami" "packer_ami" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = [local.ami-name]
  }
}

module "network" {
  source = "./modules/network"

  VPC_NAME           = var.VPC_NAME
  VPC_CIDR_BLOCK     = var.VPC_CIDR_BLOCK
  GW_NAME            = var.GW_NAME
  PUBLIC_RT_NAME     = var.PUBLIC_RT_NAME
  AVAILABILITY_ZONES = var.AVAILABILITY_ZONES
  SUBNET_NAMES       = var.SUBNET_NAMES
  SUBNET_IPS         = var.SUBNET_IPS
}

module "instance" {
  source = "./modules/instance"

  KEY_NAME           = var.KEY_NAME
  AVAILABILITY_ZONE  = var.AVAILABILITY_ZONES[0]
  PATH_TO_PUBLIC_KEY = var.PATH_TO_PUBLIC_KEY
  SG_VPC_ID          = module.network.vpc_id
  SG_NAME            = var.SG_NAME
  SG_DESCRIPTION     = var.SG_DESCRIPTION
  AMI_ID             = data.aws_ami.packer_ami.id
  INSTANCE_TYPE      = var.INSTANCE_TYPE
  INSTANCE_SUBNET_ID = module.network.public_subnet_A_id
  INSTANCE_NAME      = var.INSTANCE_NAME
}
