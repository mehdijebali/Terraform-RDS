
resource "aws_key_pair" "tf_ssh_key" {
    key_name = var.KEY_NAME
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

#Create AWS Instance
resource "aws_instance" "MyFirstInstnace" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  availability_zone = var.AVAILABILITY_ZONES[0]
  key_name      = aws_key_pair.tf_ssh_key.key_name
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  subnet_id = module.network.public_subnet_A_id

  tags = {
    Name = "RDS_Client"
  }
}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}
