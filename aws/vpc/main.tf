resource "aws_vpc" "network" {
  cidr_block           = var.cidrb
  enable_dns_support   = var.ednss
  enable_dns_hostnames = var.ednsh

  tags = {
    Name = var.name
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.network.id

  tags = {
    Name = "igw-${var.name}"
  }
}

resource "aws_default_route_table" "drt" {
  default_route_table_id = aws_vpc.network.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "drt-${var.name}"
  }
}

locals {
  subnets = {
    for x in var.subnetworks :
    "${x.name}" => x
  }
}

resource "aws_subnet" "subnetworks" {
  for_each   = local.subnets
  vpc_id     = aws_vpc.network.id
  cidr_block = each.value.cidrb

  tags = {
    Name = each.value.name
  }
}
