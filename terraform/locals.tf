locals {
  RDS_NAME = "tf-mariadb"
  SG_TAG = "allow-mariadb"
}

locals {
  sg_tags = {
    Name = local.SG_TAG
  }
}

locals {
  rds_tags = {
    Name = local.RDS_NAME   
  }
}