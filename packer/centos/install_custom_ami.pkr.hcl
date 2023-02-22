data "amazon-ami" "autogenerated_1" {
  filters = {
    name                = "amzn2-ami-hvm-2.0.*-gp2"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = ["amazon"]
  region      = "us-east-1"
}

source "amazon-ebs" "autogenerated_1" {
  ami_name      = "centos-mysql-client-pkr-${local.timestamp}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "${data.amazon-ami.autogenerated_1.id}"
  ssh_username  = "ec2-user"
}

build {
  sources = ["source.amazon-ebs.autogenerated_1"]

  provisioner "ansible" {
    playbook_file = "./ansible/main.yml"
  }

}
