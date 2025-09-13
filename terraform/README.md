<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/instance | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.tf-mariadb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_parameter_group.mariadb-parameters](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_subnet_group.mariadb-subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_security_group.allow-mariadb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AVAILABILITY_ZONES"></a> [AVAILABILITY\_ZONES](#input\_AVAILABILITY\_ZONES) | n/a | `list(any)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_DB_ALLOCATED_STORAGE"></a> [DB\_ALLOCATED\_STORAGE](#input\_DB\_ALLOCATED\_STORAGE) | n/a | `number` | `10` | no |
| <a name="input_DB_BACKUP_RETENTION_PERIOD"></a> [DB\_BACKUP\_RETENTION\_PERIOD](#input\_DB\_BACKUP\_RETENTION\_PERIOD) | n/a | `number` | `30` | no |
| <a name="input_DB_ENGINE"></a> [DB\_ENGINE](#input\_DB\_ENGINE) | n/a | `string` | `"mariadb"` | no |
| <a name="input_DB_IDENTIFIER"></a> [DB\_IDENTIFIER](#input\_DB\_IDENTIFIER) | n/a | `string` | `"mariadb"` | no |
| <a name="input_DB_INSTANCE_CLASS"></a> [DB\_INSTANCE\_CLASS](#input\_DB\_INSTANCE\_CLASS) | n/a | `string` | `"db.t2.micro"` | no |
| <a name="input_DB_PASSWORD"></a> [DB\_PASSWORD](#input\_DB\_PASSWORD) | n/a | `string` | n/a | yes |
| <a name="input_DB_USERNAME"></a> [DB\_USERNAME](#input\_DB\_USERNAME) | n/a | `string` | n/a | yes |
| <a name="input_GW_NAME"></a> [GW\_NAME](#input\_GW\_NAME) | n/a | `string` | `"demo-gw"` | no |
| <a name="input_INSTANCE_NAME"></a> [INSTANCE\_NAME](#input\_INSTANCE\_NAME) | n/a | `string` | `"custom_instance"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_KEY_NAME"></a> [KEY\_NAME](#input\_KEY\_NAME) | n/a | `string` | `"tf-ssh-key"` | no |
| <a name="input_LD_NAME"></a> [LD\_NAME](#input\_LD\_NAME) | n/a | `string` | `"centos"` | no |
| <a name="input_MARIADB_PARAMETERS_DESCRIPTION"></a> [MARIADB\_PARAMETERS\_DESCRIPTION](#input\_MARIADB\_PARAMETERS\_DESCRIPTION) | n/a | `string` | `"mariadb10.6"` | no |
| <a name="input_MARIADB_PARAMETERS_FAMILY"></a> [MARIADB\_PARAMETERS\_FAMILY](#input\_MARIADB\_PARAMETERS\_FAMILY) | n/a | `string` | `"mariadb10.6"` | no |
| <a name="input_MARIADB_PARAMETERS_NAME"></a> [MARIADB\_PARAMETERS\_NAME](#input\_MARIADB\_PARAMETERS\_NAME) | n/a | `string` | `"mariadb-parameters"` | no |
| <a name="input_MARIADB_SUBNETS_DESCRIPTION"></a> [MARIADB\_SUBNETS\_DESCRIPTION](#input\_MARIADB\_SUBNETS\_DESCRIPTION) | n/a | `string` | `"Amazon RDS subnet group"` | no |
| <a name="input_MARIADB_SUBNETS_NAME"></a> [MARIADB\_SUBNETS\_NAME](#input\_MARIADB\_SUBNETS\_NAME) | n/a | `string` | `"mariadb-subnets"` | no |
| <a name="input_MAX_ALLOWED_PACKET"></a> [MAX\_ALLOWED\_PACKET](#input\_MAX\_ALLOWED\_PACKET) | n/a | `string` | `"16777216"` | no |
| <a name="input_PATH_TO_PUBLIC_KEY"></a> [PATH\_TO\_PUBLIC\_KEY](#input\_PATH\_TO\_PUBLIC\_KEY) | n/a | `string` | `"levelup_key.pub"` | no |
| <a name="input_PUBLIC_RT_NAME"></a> [PUBLIC\_RT\_NAME](#input\_PUBLIC\_RT\_NAME) | n/a | `string` | `"demo-rt"` | no |
| <a name="input_RDS_STORAGE_TYPE"></a> [RDS\_STORAGE\_TYPE](#input\_RDS\_STORAGE\_TYPE) | n/a | `string` | `"gp2"` | no |
| <a name="input_SG_DESCRIPTION"></a> [SG\_DESCRIPTION](#input\_SG\_DESCRIPTION) | n/a | `string` | `"security group that allows ssh connection"` | no |
| <a name="input_SG_NAME"></a> [SG\_NAME](#input\_SG\_NAME) | n/a | `string` | `"allow-levelup-ssh"` | no |
| <a name="input_SUBNET_IPS"></a> [SUBNET\_IPS](#input\_SUBNET\_IPS) | n/a | `list(any)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24",<br/>  "10.0.3.0/24",<br/>  "10.0.4.0/24"<br/>]</pre> | no |
| <a name="input_SUBNET_NAMES"></a> [SUBNET\_NAMES](#input\_SUBNET\_NAMES) | n/a | `list(any)` | <pre>[<br/>  "public-subnet-A",<br/>  "public-subnet-B",<br/>  "private-subnet-A",<br/>  "private-subnet-B"<br/>]</pre> | no |
| <a name="input_VPC_CIDR_BLOCK"></a> [VPC\_CIDR\_BLOCK](#input\_VPC\_CIDR\_BLOCK) | n/a | `string` | `"10.0.0.0/16"` | no |
| <a name="input_VPC_NAME"></a> [VPC\_NAME](#input\_VPC\_NAME) | n/a | `string` | `"demo-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds"></a> [rds](#output\_rds) | n/a |
<!-- END_TF_DOCS -->## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/instance | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.tf-mariadb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_parameter_group.mariadb-parameters](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_subnet_group.mariadb-subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_security_group.allow-mariadb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AVAILABILITY_ZONES"></a> [AVAILABILITY\_ZONES](#input\_AVAILABILITY\_ZONES) | List of AZ wher RDS instances are deployed | `list(any)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | The region where resources are deployed | `string` | `"us-east-1"` | no |
| <a name="input_DB_ALLOCATED_STORAGE"></a> [DB\_ALLOCATED\_STORAGE](#input\_DB\_ALLOCATED\_STORAGE) | Database Storage Size in Gb | `number` | `10` | no |
| <a name="input_DB_BACKUP_RETENTION_PERIOD"></a> [DB\_BACKUP\_RETENTION\_PERIOD](#input\_DB\_BACKUP\_RETENTION\_PERIOD) | Database Backup retention period | `number` | `30` | no |
| <a name="input_DB_ENGINE"></a> [DB\_ENGINE](#input\_DB\_ENGINE) | Database Engine | `string` | `"mariadb"` | no |
| <a name="input_DB_IDENTIFIER"></a> [DB\_IDENTIFIER](#input\_DB\_IDENTIFIER) | Database Identifier | `string` | `"mariadb"` | no |
| <a name="input_DB_INSTANCE_CLASS"></a> [DB\_INSTANCE\_CLASS](#input\_DB\_INSTANCE\_CLASS) | Database instance class | `string` | `"db.t2.micro"` | no |
| <a name="input_DB_PASSWORD"></a> [DB\_PASSWORD](#input\_DB\_PASSWORD) | Database user password | `string` | n/a | yes |
| <a name="input_DB_USERNAME"></a> [DB\_USERNAME](#input\_DB\_USERNAME) | Database username | `string` | n/a | yes |
| <a name="input_GW_NAME"></a> [GW\_NAME](#input\_GW\_NAME) | VPC Internet Gatewey name | `string` | `"demo-gw"` | no |
| <a name="input_INSTANCE_NAME"></a> [INSTANCE\_NAME](#input\_INSTANCE\_NAME) | EC2 Instance name | `string` | `"custom_instance"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | AWS Instance type | `string` | `"t2.micro"` | no |
| <a name="input_KEY_NAME"></a> [KEY\_NAME](#input\_KEY\_NAME) | SSH key name | `string` | `"tf-ssh-key"` | no |
| <a name="input_LD_NAME"></a> [LD\_NAME](#input\_LD\_NAME) | Linux Distribution | `string` | `"centos"` | no |
| <a name="input_MARIADB_PARAMETERS_DESCRIPTION"></a> [MARIADB\_PARAMETERS\_DESCRIPTION](#input\_MARIADB\_PARAMETERS\_DESCRIPTION) | Database parameters description | `string` | `"mariadb10.6"` | no |
| <a name="input_MARIADB_PARAMETERS_FAMILY"></a> [MARIADB\_PARAMETERS\_FAMILY](#input\_MARIADB\_PARAMETERS\_FAMILY) | Database parameters family | `string` | `"mariadb10.6"` | no |
| <a name="input_MARIADB_PARAMETERS_NAME"></a> [MARIADB\_PARAMETERS\_NAME](#input\_MARIADB\_PARAMETERS\_NAME) | Database parameters name | `string` | `"mariadb-parameters"` | no |
| <a name="input_MARIADB_SUBNETS_DESCRIPTION"></a> [MARIADB\_SUBNETS\_DESCRIPTION](#input\_MARIADB\_SUBNETS\_DESCRIPTION) | Subnets descriptions where Database are deployed | `string` | `"Amazon RDS subnet group"` | no |
| <a name="input_MARIADB_SUBNETS_NAME"></a> [MARIADB\_SUBNETS\_NAME](#input\_MARIADB\_SUBNETS\_NAME) | Subnets names where Database are deployed | `string` | `"mariadb-subnets"` | no |
| <a name="input_MAX_ALLOWED_PACKET"></a> [MAX\_ALLOWED\_PACKET](#input\_MAX\_ALLOWED\_PACKET) | Maximum Allowed Packet | `string` | `"16777216"` | no |
| <a name="input_PATH_TO_PUBLIC_KEY"></a> [PATH\_TO\_PUBLIC\_KEY](#input\_PATH\_TO\_PUBLIC\_KEY) | Path to SSH public key | `string` | `"levelup_key.pub"` | no |
| <a name="input_PUBLIC_RT_NAME"></a> [PUBLIC\_RT\_NAME](#input\_PUBLIC\_RT\_NAME) | Subnet Route table name | `string` | `"demo-rt"` | no |
| <a name="input_RDS_STORAGE_TYPE"></a> [RDS\_STORAGE\_TYPE](#input\_RDS\_STORAGE\_TYPE) | Database Storage type | `string` | `"gp2"` | no |
| <a name="input_SG_DESCRIPTION"></a> [SG\_DESCRIPTION](#input\_SG\_DESCRIPTION) | Security Group Description | `string` | `"security group that allows ssh connection"` | no |
| <a name="input_SG_NAME"></a> [SG\_NAME](#input\_SG\_NAME) | Security Group Name | `string` | `"allow-levelup-ssh"` | no |
| <a name="input_SUBNET_IPS"></a> [SUBNET\_IPS](#input\_SUBNET\_IPS) | List of subnets IPs | `list(any)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24",<br/>  "10.0.3.0/24",<br/>  "10.0.4.0/24"<br/>]</pre> | no |
| <a name="input_SUBNET_NAMES"></a> [SUBNET\_NAMES](#input\_SUBNET\_NAMES) | List of subnets names | `list(any)` | <pre>[<br/>  "public-subnet-A",<br/>  "public-subnet-B",<br/>  "private-subnet-A",<br/>  "private-subnet-B"<br/>]</pre> | no |
| <a name="input_VPC_CIDR_BLOCK"></a> [VPC\_CIDR\_BLOCK](#input\_VPC\_CIDR\_BLOCK) | VPC CIDR Block | `string` | `"10.0.0.0/16"` | no |
| <a name="input_VPC_NAME"></a> [VPC\_NAME](#input\_VPC\_NAME) | VPC name | `string` | `"demo-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds"></a> [rds](#output\_rds) | n/a |
