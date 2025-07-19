provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-0e02f90ba615470c7"
}
# 1. terraform init
# 2. terraform plan -generate-config-out=mysg.tf
# 3. terraform apply ==> It will generate tfstate file
# 4. terraform version shound be >= 1.5