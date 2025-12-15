terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-unique-tf-bucket-for-ny-123456"

    tags = {
        Name        = "MyTestBucket"
        Environment = "Dev"
    }
}