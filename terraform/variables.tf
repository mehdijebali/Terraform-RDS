variable "AWS_REGION" {
  type    = string
  description = "The region where resources are deployed"
  default = "us-east-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  type    = string
  description = "Path to SSH public key"
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  type    = string
  description = "AWS Instance type"
  default = "t2.micro"
}

variable "KEY_NAME" {
  type    = string
  description = "SSH key name"
  default = "tf-ssh-key"
}

variable "DB_ALLOCATED_STORAGE" {
  type    = number
  description = "Database Storage Size in Gb"
  default = 10
}

variable "DB_ENGINE" {
  type    = string
  description = "Database Engine"
  default = "mariadb"
}

variable "DB_INSTANCE_CLASS" {
  type    = string
  description = "Database instance class"
  default = "db.t2.micro"
}

variable "DB_IDENTIFIER" {
  type    = string
  description = "Database Identifier"
  default = "mariadb"
}

variable "DB_USERNAME" {
  type = string
  description = "Database username"
}

variable "DB_PASSWORD" {
  type      = string
  description = "Database user password"
  sensitive = true
}

variable "DB_BACKUP_RETENTION_PERIOD" {
  type    = number
  description = "Database Backup retention period"
  default = 30
}

variable "MARIADB_SUBNETS_NAME" {
  type    = string
  description = "Subnets names where Database are deployed"
  default = "mariadb-subnets"
}

variable "MARIADB_SUBNETS_DESCRIPTION" {
  type    = string
  description = "Subnets descriptions where Database are deployed"
  default = "Amazon RDS subnet group"
}

variable "MARIADB_PARAMETERS_NAME" {
  type    = string
  description = "Database parameters name"
  default = "mariadb-parameters"
}

variable "MARIADB_PARAMETERS_FAMILY" {
  type    = string
  description = "Database parameters family"
  default = "mariadb10.6"
}

variable "MARIADB_PARAMETERS_DESCRIPTION" {
  type    = string
  description = "Database parameters description"
  default = "mariadb10.6"
}

variable "MAX_ALLOWED_PACKET" {
  type    = string
  description = "Maximum Allowed Packet"
  default = "16777216"
}

variable "RDS_STORAGE_TYPE" {
  type    = string
  description = "Database Storage type"
  default = "gp2"
}

variable "VPC_NAME" {
  type    = string
  description = "VPC name"
  default = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  type    = string
  description = "VPC CIDR Block"
  default = "10.0.0.0/16"
}

variable "GW_NAME" {
  type    = string
  description = "VPC Internet Gatewey name"
  default = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  type    = string
  description = "Subnet Route table name"
  default = "demo-rt"
}

variable "AVAILABILITY_ZONES" {
  type    = list(any)
  description = "List of AZ wher RDS instances are deployed"
  default = ["us-east-1a", "us-east-1b"]
}

variable "SUBNET_NAMES" {
  type    = list(any)
  description = "List of subnets names"
  default = ["public-subnet-A", "public-subnet-B", "private-subnet-A", "private-subnet-B"]
}

variable "SUBNET_IPS" {
  type    = list(any)
  description = "List of subnets IPs"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "SG_NAME" {
  type    = string
  description = "Security Group Name"
  default = "allow-levelup-ssh"
}

variable "SG_DESCRIPTION" {
  type    = string
  description = "Security Group Description"
  default = "security group that allows ssh connection"
}

variable "INSTANCE_NAME" {
  type    = string
  description = "EC2 Instance name"
  default = "custom_instance"
}

variable "LD_NAME" {
  type    = string
  description = "Linux Distribution"
  default = "centos"
}