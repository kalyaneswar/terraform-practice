#  condition ? true_val : false_val


variable "envionment" {
  default = "Dev"
}

resource "aws_instance" "ec2" {
  ami = "ami-123"
  instance_type = var.envionment == "Dev" ? "t2.micro" : "t2.medium"
}