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
  source = "github.com/mehdijebali/terraform-modules//network?ref=v1.0.0"

  VPC_NAME           = var.VPC_NAME
  VPC_CIDR_BLOCK     = var.VPC_CIDR_BLOCK
  GW_NAME            = var.GW_NAME
  PUBLIC_RT_NAME     = var.PUBLIC_RT_NAME
  AVAILABILITY_ZONES = var.AVAILABILITY_ZONES
  SUBNET_NAMES       = var.SUBNET_NAMES
  SUBNET_IPS         = var.SUBNET_IPS
}

module "ssm-role" {
  source = "github.com/mehdijebali/terraform-modules//ssm-role?ref=v1.0.0"
}

module "instance" {
  source = "github.com/mehdijebali/terraform-modules//instance?ref=v1.0.0"

  SG_VPC_ID             = module.network.vpc_id
  USER_DATA             = module.ssm-role.user_data
  INSTANCE_PROFILE_NAME = module.ssm-role.instance_profile_name
  AMI_ID                = data.aws_ami.packer_ami.id
  INSTANCE_SUBNET_ID    = module.network.public_subnet_A_id
  INSTANCE_TYPE         = var.INSTANCE_TYPE
  INSTANCE_NAME         = var.INSTANCE_NAME
  AVAILABILITY_ZONE     = var.AVAILABILITY_ZONES[0]
}