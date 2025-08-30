resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0a4723d2c63bae7c3"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id  # ✅ using created subnet
  tags = {
    Name = "MyTerraformEC2"
  }
}
