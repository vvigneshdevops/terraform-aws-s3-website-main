terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.1.0"
    }
  }

}
#configure aws provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQZKETDYW4SV47E6B"
  secret_key = "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"

}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  # acl    = "public-read"

}