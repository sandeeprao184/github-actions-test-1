resource "aws_vpc" "name" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "project-vpc"
  }
}

resource "aws_subnet" "name" {
  vpc_id     = aws_vpc.name.id
  cidr_block = var.public_subnet_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = "publicsubnet-1"
  }
}
