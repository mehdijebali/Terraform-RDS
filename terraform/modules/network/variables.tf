variable "VPC_NAME" {}
variable "VPC_CIDR_BLOCK" {}
variable "GW_NAME" {}
variable "PUBLIC_RT_NAME" {}

variable "AVAILABILITY_ZONES" {
  type = list(any)
}

variable "SUBNET_NAMES" {
  type = list(any)
}
variable "SUBNET_IPS" {
  type = list(any)
}