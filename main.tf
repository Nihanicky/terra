terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"  # 👈 specify region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0a4723d2c63bae7c3" # valid AMI for ap-south-1
  instance_type = "t2.micro"
  subnet_id     = "subnet-123abc456" # replace with a real subnet
  tags = {
    Name = "MyTerraformEC2"
  }
}
