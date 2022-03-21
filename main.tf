provider "aws" {
  version = ">= 4.6.0"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "test" {
  bucket = "learn-run-tasks-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.test.id
  acl    = "public"
}
