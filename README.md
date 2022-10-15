# RDS Provisioning with Terraform
In this Lab, we will create AWS RDS resource and connect to it through an EC2 instance (Client side).
## About RDS 
Amazon RDS is one of the most popular services on the AWS Platform, and Amazon Aurora is the fastest growing service in AWS history! Not only is it based upon providing a transactionally safe, managed relational database; as a service, they have also adapted PostgreSQL and MySQL to create Aurora, a relational cloud native database.
## Instructions
1. Clone the project 
```
git clone https://github.com/mehdijebali/Terraform-VPC.git
```
2. In the project root directory, create an SSH key and name it **levelup_key**
```
ssh-keygen
``` 
3. Export your AWS Credentials
```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```
4. In the project root directory, initiate Terraform in order to install the declared provider in `provider.tf` file
```
terraform init
```
5. If you want to see your provisionning details, run the following command
```
terraform plan
```
6. Apply modifications
```
terraform apply
```
7. After the creation is completed, SSH to the EC2 instance
```
ssh ec2-user@<public_ip>
```
8. install mySQL-Client
```
sudo apt-get install mysql-client
```
9. Connect to the RDS Database and type the user password
```
mysql -u <user> -h <mysql-endpoint> -p
```
## Expected Results
Once the provisionning is done, we can verify the created resources from the AWS console
#### DB Instance
![](./Lab_Results/db_instance.png)
#### DB Security Group
![](./Lab_Results/db_sg.png)
#### DB Connection
When you connect to database (step 9 in the Instructions section), you should find similar result to the following
![](./Lab_Results/rds_connection.png)
Therefore, one connection is triggered in AWS RDS Dashboard 
![](./Lab_Results/one_connection.png)
