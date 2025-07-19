provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias = "mumbai"
  region = "ap-south-1"
}

provider "aws" {
  alias = "usa"
  region = "ap-west-1"
}

resource "aws_security_group" "sg_1" {
  name = "prod_firewall"
  provider = aws.mumbai
}

resource "aws_security_group" "sg_2" {
  name = "uat_firewall"
  provider = aws.usa
  
}

# if nothing provder it's take default which is us-east-1
resource "aws_security_group" "sg_3" {
  name = "stagging_firewall"
}

# terraform validate