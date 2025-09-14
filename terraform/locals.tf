locals {
  RDS_NAME = "tf-mariadb"
  SG_TAG   = "allow-mariadb"
  ami-name = var.LD_NAME == "centos" ? "centos-mysql-client-pkr-*" : "ubuntu-mysql-client-pkr-*"
  sg_tags = {
    Name = local.SG_TAG
  }
  rds_tags = {
    Name = local.RDS_NAME
  }
  default-tags = {
    Stack       = "RDS",
    Environment = "Production"
  }
}