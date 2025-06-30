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


  tags = {
    Name = "work-station"
    envionment = "test"
  }
}

output "public_ip" {
  value = aws_instance.workstation.public_ip
}

output "web_link" {
  value = "http://${aws_instance.workstation.public_ip}:8080"
}

output "will_get_all_attributes" {
  value = aws_instance.workstation
}