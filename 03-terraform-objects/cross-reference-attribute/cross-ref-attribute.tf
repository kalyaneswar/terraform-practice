terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_security_group" "my_sg" {
  name        = "allow_ssh_public"
  description = "Allow SSH inbound traffic and all outbound traffic"

  tags = {
    Name = "allow ssh"
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id] # this is cross reference attribute from sg
#   it will create only once sg group is created and it's id is tagged to ec2 instance


  tags = {
    Name = "wc2"
    envionment = "test"
  }
}