provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "actions" {
   cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Class30"
    Team = "DevOps"
    Environment = "stage"
    Division = "HR"
  }
}

terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket = "myotherclass26bucket"
    key = "stage/terraform.tfstate"
    region = "us-west-1"
  }
}
