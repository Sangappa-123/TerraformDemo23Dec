provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}

variable "bucket_name" {
  type = string
}

variable "ami" {
  description = "AMI ID of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}
