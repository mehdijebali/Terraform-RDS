variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-0b0ea68c435eb488d"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "AVAILABILITY_ZONE" {
  default = "us-east-1a"
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