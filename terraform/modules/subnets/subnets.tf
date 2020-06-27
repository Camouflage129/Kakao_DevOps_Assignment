resource "aws_subnet" "pub_a_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.pub_a_subnet["cidr_block"]
  availability_zone = var.pub_a_subnet["availability_zone"]
  tags = {
    Name = "${var.pub_a_subnet["name"]}"
  }
}

resource "aws_subnet" "pri_a_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.pri_a_subnet["cidr_block"]
  availability_zone = var.pri_a_subnet["availability_zone"]
  tags = {
    Name = "${var.pri_a_subnet["name"]}"
  }
}

resource "aws_subnet" "pub_c_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.pub_c_subnet["cidr_block"]
  availability_zone = var.pub_c_subnet["availability_zone"]
  tags = {
    Name = "${var.pub_c_subnet["name"]}"
  }
}

resource "aws_subnet" "pri_c_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.pri_c_subnet["cidr_block"]
  availability_zone = var.pri_c_subnet["availability_zone"]
  tags = {
    Name = "${var.pri_c_subnet["name"]}"
  }
}

