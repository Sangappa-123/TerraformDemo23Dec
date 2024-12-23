provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}

variable "bucket_name" {
  type = string
}
