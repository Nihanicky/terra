provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0a4723d2c63bae7c3" # Amazon Linux 2
  instance_type = "t2.micro"
  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}
