terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
  profile = "aws-terraform"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "jonathancamposti"

  tags = {
    Managed_by = "Terraform"
  }
}