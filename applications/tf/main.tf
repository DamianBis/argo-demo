terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
  access_key = var.access_key
  access_key = var.secret_key
}

variable "bucket_prefix" {
 type = string
 description = "Prefix for bucket"
 default = "woaoah"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket_prefix = var.bucket_prefix
}
