terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "trendyol_junior_bucket" {
  bucket = "ersel-trendyol-junior-project-2026"

  tags = {
    Name        = "My First Terraform S3 Bucket"
    Environment = "Dev"
  }
}
