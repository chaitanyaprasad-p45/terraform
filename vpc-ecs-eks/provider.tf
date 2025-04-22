terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
/*
  backend "s3" {
    # Configure backend in your CI/CD or via variables
    # bucket         = "your-terraform-state-bucket"
    # key            = "terraform.tfstate"
    # region         = "ap-south-1"
    # dynamodb_table = "terraform-locks"
  }
*/
}


provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = "true"
      Project     = "python-api"
    }
  }
}
