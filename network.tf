resource "aws_vpc" "MYVPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
    enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.MYVPC.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

resource "aws_subnet" "subnet1_public" {
  vpc_id            = aws_vpc.MYVPC.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.vpc_name}-Public-Subnet1"
  }
}
resource "aws_subnet" "subnet2_public" {
  vpc_id            = aws_vpc.MYVPC.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.vpc_name}-Public-Subnet2"
  }
}
resource "aws_subnet" "subnet3_public" {
  vpc_id            = aws_vpc.MYVPC.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "us-east-1c"
  tags = {
    Name = "${var.vpc_name}-Public-Subnet3"
  }
}