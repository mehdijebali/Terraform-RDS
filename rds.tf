#RDS Resources
resource "aws_db_subnet_group" "mariadb-subnets" {
  name        = var.MARIADB_SUBNETS_NAME
  description = var.MARIADB_SUBNETS_DESCRIPTION
  subnet_ids  = [aws_subnet.private-subnet-A.id, aws_subnet.private-subnet-B.id]
}

#RDS Parameters
resource "aws_db_parameter_group" "mariadb-parameters" {
  name        = var.MARIADB_PARAMETERS_NAME
  family      = var.MARIADB_PARAMETERS_FAMILY
  description = var.MARIADB_PARAMETERS_DESCRIPTION

  parameter {
    name  = "max_allowed_packet"
    value = "${var.MAX_ALLOWED_PACKET}"
  }
}

#RDS Instance properties
resource "aws_db_instance" "tf-mariadb" {
  allocated_storage       = var.DB_ALLOCATED_STORAGE         # 20 GB of storage
  engine                  = var.DB_ENGINE
  instance_class          = var.DB_INSTANCE_CLASS # use micro if you want to use the free tier
  identifier              = var.DB_IDENTIFIER
  db_name                 = var.DB_IDENTIFIER
  username                = var.DB_USERNAME           # username
  password                = var.DB_PASSWORD     # password
  db_subnet_group_name    = aws_db_subnet_group.mariadb-subnets.name
  parameter_group_name    = aws_db_parameter_group.mariadb-parameters.name
  multi_az                = "false"            # set to true to have high availability: 2 instances synchronized with each other
  vpc_security_group_ids  = [aws_security_group.allow-mariadb.id]
  storage_type            = var.RDS_STORAGE_TYPE
  backup_retention_period = var.DB_BACKUP_RETENTION_PERIOD                                          # how long you’re going to keep your backups
  availability_zone       = var.AVAILABILITY_ZONE # prefered AZ
  skip_final_snapshot     = true                                        # skip final snapshot when doing terraform destroy
  
  tags = {
    Name = "${var.RDS_NAME}"
  }
}

output "rds" {
  value = aws_db_instance.tf-mariadb.endpoint
}

