variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  type    = string
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}

variable "KEY_NAME" {
  type    = string
  default = "tf-ssh-key"
}

variable "DB_ALLOCATED_STORAGE" {
  type    = number
  default = 10
}

variable "DB_ENGINE" {
  type    = string
  default = "mariadb"
}

variable "DB_INSTANCE_CLASS" {
  type    = string
  default = "db.t2.micro"
}

variable "DB_IDENTIFIER" {
  type    = string
  default = "mariadb"
}

variable "DB_USERNAME" {
  type = string
}

variable "DB_PASSWORD" {
  type      = string
  sensitive = true
}

variable "DB_BACKUP_RETENTION_PERIOD" {
  type    = number
  default = 30
}

variable "MARIADB_SUBNETS_NAME" {
  type    = string
  default = "mariadb-subnets"
}

variable "MARIADB_SUBNETS_DESCRIPTION" {
  type    = string
  default = "Amazon RDS subnet group"
}

variable "MARIADB_PARAMETERS_NAME" {
  type    = string
  default = "mariadb-parameters"
}

variable "MARIADB_PARAMETERS_FAMILY" {
  type    = string
  default = "mariadb10.6"
}

variable "MARIADB_PARAMETERS_DESCRIPTION" {
  type    = string
  default = "mariadb10.6"
}

variable "MAX_ALLOWED_PACKET" {
  type    = string
  default = "16777216"
}

variable "RDS_STORAGE_TYPE" {
  type    = string
  default = "gp2"
}

variable "VPC_NAME" {
  type    = string
  default = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  type    = string
  default = "10.0.0.0/16"
}

variable "GW_NAME" {
  type    = string
  default = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  type    = string
  default = "demo-rt"
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
  type    = string
  default = "allow-levelup-ssh"
}

variable "SG_DESCRIPTION" {
  type    = string
  default = "security group that allows ssh connection"
}

variable "INSTANCE_NAME" {
  type    = string
  default = "custom_instance"
}

variable "LD_NAME" {
  type    = string
  default = "centos"
}