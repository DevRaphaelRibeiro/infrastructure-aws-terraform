### Create VPC
resource "aws_vpc" "prod-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "prod-vpc"
  }
}

### Subnet Publica Web

resource "aws_subnet" "prod-subnet-public-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch =   "true"
  availability_zone    =   var.AWS_REGION_AZ_WEB_1

  tags = {
    Name = "prod-subnet-public-1"
  }
}

resource "aws_subnet" "prod-subnet-public-2" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch =   "true"
  availability_zone    =   var.AWS_REGION_AZ_WEB_2

  tags = {
    Name = "prod-subnet-public-2"
  }
}

resource "aws_subnet" "prod-subnet-public-3" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch =   "true"
  availability_zone    =   var.AWS_REGION_AZ_WEB_3

  tags = {
    Name = "prod-subnet-public-3"
  }
}

resource "aws_subnet" "prod-subnet-private-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch =   "false"
  availability_zone    =   var.AWS_REGION_AZ_DB

  tags = {
    Name = "prod-subnet-private-1"
  }
}