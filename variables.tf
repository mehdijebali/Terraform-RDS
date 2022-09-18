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
  default = 1
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

variable "DB_USERNAME" {
  default = "root"
}

variable "DB_PASSWORD" {
  default = "mariadb141"
}

variable "DB_BACKUP_RETENTION_PERIOD" {
  default = 30
}