terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    #   ~> 5.0 ==> Any version in 5.X range 
        #  version =  ">=2.10,<=2.30"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}