terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "workstation" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08ddaa8cfe73d4af2"]
#   This will create 3 instances 
  count = 3


  tags = {
    Name = "work-station-${count.index}"
    envionment = "test"
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08ddaa8cfe73d4af2"]
#   This will create 3 instances 
  count = 3


  tags = {
    Name = var.name_ec2[count.index]
    envionment = "test"
  }
}

variable "name_ec2" {
  type = list
  default = ["first_ec2", "second_ec2", "third_ec2"]
}