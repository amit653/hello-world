terraform {
  required_providers {
    random={
source="hashicorp/random"
version="~> 3.9.0"   # pin to a stable version
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.46.0"   # adjust to your AWS provider version
    }
  }
   
}

provider "aws" {
  region = var.aws_region
}