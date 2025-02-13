#RDS Resources
resource "aws_db_subnet_group" "mariadb-subnets" {
  name        = var.MARIADB_SUBNETS_NAME
  description = var.MARIADB_SUBNETS_DESCRIPTION
  subnet_ids  = [module.network.private_subnet_A_id, module.network.private_subnet_B_id]
}

#RDS Parameters
resource "aws_db_parameter_group" "mariadb-parameters" {
  name        = var.MARIADB_PARAMETERS_NAME
  family      = var.MARIADB_PARAMETERS_FAMILY
  description = var.MARIADB_PARAMETERS_DESCRIPTION

  parameter {
    name  = "max_allowed_packet"
    value = var.MAX_ALLOWED_PACKET
  }
}

#RDS Instance properties
resource "aws_db_instance" "tf-mariadb" {
  allocated_storage       = var.DB_ALLOCATED_STORAGE # 20 GB of storage
  engine                  = var.DB_ENGINE
  instance_class          = var.DB_INSTANCE_CLASS # use micro if you want to use the free tier
  identifier              = var.DB_IDENTIFIER
  db_name                 = var.DB_IDENTIFIER
  username                = var.DB_USERNAME # username
  password                = var.DB_PASSWORD # password
  db_subnet_group_name    = aws_db_subnet_group.mariadb-subnets.name
  parameter_group_name    = aws_db_parameter_group.mariadb-parameters.name
  multi_az                = "false" # set to true to have high availability: 2 instances synchronized with each other
  vpc_security_group_ids  = [aws_security_group.allow-mariadb.id]
  storage_type            = var.RDS_STORAGE_TYPE
  backup_retention_period = var.DB_BACKUP_RETENTION_PERIOD # how long you’re going to keep your backups
  availability_zone       = var.AVAILABILITY_ZONES[0]      # prefered AZ
  skip_final_snapshot     = true                           # skip final snapshot when doing terraform destroy

  tags = local.rds_tags
}

#Security Group for MariaDB
resource "aws_security_group" "allow-mariadb" {
  vpc_id      = module.network.vpc_id
  name        = "allow-mariadb"
  description = "security group for Maria DB"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [module.instance.instance_sg_id]
  }

  tags = local.sg_tags
}

output "rds" {
  value = aws_db_instance.tf-mariadb.endpoint
}

