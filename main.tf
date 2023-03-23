provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "actions" {
   cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Class30"
    Team = "DevOps"
    Environment = "pro"
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
    bucket = "goldenbucket"
    key =    "dev/terraform.tfstate"                                                    
    #dynamodb_table = "terraform-lock"
    region = "us-west-1"
  }
}# "path/to/my/key"  