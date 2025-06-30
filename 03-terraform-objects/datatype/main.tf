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
    user_id = var.user_id

  }
}

variable "ami_id" {
  type = string
}

variable "user_id" {
  type = number
}

variable "my_list" {
  type = list
  default = ["chennai", "Mumbai", "Hyderabad"]
}

variable "my_list_stg" {
  type = list(string)
  default = ["chennai", "Mumbai", "Hyderabad"]
}

variable "my_list_num" {
  type = list(number)
  default = ["1", "2", "3"]
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "Kalyan"
    "Terraform" = "Yes"
    "Team" = "DevOps"
  }
}