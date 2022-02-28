terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.2.0"
    }
  }

  required_version = "~>1.1.6"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "first_ec2_instance_with_tf" {
  ami           = "ami-0dd555eb7eb3b7c82"
  instance_type = "t2.micro"
  tags = {
    Name = "ec2-instance-using-tf"
  }
}

resource "aws_s3_bucket" "s3_with_terraform" {
  bucket = "s3-bucket-terraformasdfgh"
  tags = {
    Name = "s3-bucket-terraformasdfgh"
  }
}