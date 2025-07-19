# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0e02f90ba615470c7"
resource "aws_security_group" "mysg" {
  description = "manually created sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Managed by terraform"
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "manually-sg"
  name_prefix            = null
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags = {
    Manual = "True"
  }
  tags_all = {
    Manual = "True"
  }
  vpc_id = "vpc-01fa20f567ec3d498"
}
