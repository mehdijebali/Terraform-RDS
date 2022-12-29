variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-09d3b3274b6c5d4aa"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "KEY_NAME" {
  default = "tf-ssh-key"
}

variable "DB_ALLOCATED_STORAGE" {
  default = 10
}

variable "DB_ENGINE" {
  default = "mariadb"
}

variable "DB_ENGINE_VERSION" {
  default = "10.4.8"
}

variable "DB_INSTANCE_CLASS" {
  default = "db.t2.micro"
}

variable "DB_IDENTIFIER" {
  default = "mariadb"
}

variable "DB_USERNAME" {}

variable "DB_PASSWORD" {}

variable "DB_BACKUP_RETENTION_PERIOD" {
  default = 30
}

variable "MARIADB_SUBNETS_NAME" {
  default = "mariadb-subnets"
}

variable "MARIADB_SUBNETS_DESCRIPTION" {
  default = "Amazon RDS subnet group"
}

variable "MARIADB_PARAMETERS_NAME" {
  default = "mariadb-parameters"
}

variable "MARIADB_PARAMETERS_FAMILY" {
  default = "mariadb10.6"
}

variable "MARIADB_PARAMETERS_DESCRIPTION" {
  default = "mariadb10.6"
}

variable "MAX_ALLOWED_PACKET" {
  default = "16777216"
}

variable "RDS_STORAGE_TYPE" {
  default = "gp2"
}

variable "RDS_NAME" {
  default = "tf-mariadb"
}

variable "VPC_NAME" {
  default = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  default = "10.0.0.0/16"
}

variable "GW_NAME" {
  default = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  default = "demo-rt"
}

variable "PRIVATE_RT_NAME" {
  default = "rt-private"
}

variable "AVAILABILITY_ZONES" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "SUBNET_NAMES" {
  type    = list(any)
  default = ["public-subnet-A", "public-subnet-B", "private-subnet-A", "private-subnet-B"]
}

variable "SUBNET_IPS" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "SG_NAME" {
  default = "allow-levelup-ssh"
}

variable "SG_DESCRIPTION" {
  default = "security group that allows ssh connection"
}

variable "INSTANCE_NAME" {
  default = "custom_instance"
}