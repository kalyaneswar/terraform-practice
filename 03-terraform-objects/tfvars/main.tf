terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "workstation" {
  ami           = var.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08ddaa8cfe73d4af2"]


  tags = {
    Name = "work-station"
    envionment = var.envionment
    app_port = var.app_port
  }
}