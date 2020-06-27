resource "aws_route_table" "pub_a_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pub_a_route["cidr_block"]
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.pub_a_route["name"]}"
  }
}

resource "aws_route_table" "pri_a_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pri_a_route["cidr_block"]
    nat_gateway_id = var.pri_a_nat_id
  }

  tags = {
    Name = "${var.pri_a_route["name"]}"
  }
}

resource "aws_route_table" "pub_c_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pub_c_route["cidr_block"]
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.pub_c_route["name"]}"
  }
}

resource "aws_route_table" "pri_c_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pri_c_route["cidr_block"]
    nat_gateway_id = var.pri_a_nat_id
  }

  tags = {
    Name = "${var.pri_c_route["name"]}"
  }
}

resource "aws_route_table_association" "association_pub_a" {
  subnet_id      = var.pub_a_subnet_id
  route_table_id = aws_route_table.pub_a_route.id
}

resource "aws_route_table_association" "association_pub_c" {
  subnet_id      = var.pub_c_subnet_id
  route_table_id = aws_route_table.pub_c_route.id
}

resource "aws_route_table_association" "association_pri_a" {
  subnet_id      = var.pri_a_subnet_id
  route_table_id = aws_route_table.pri_a_route.id
}

resource "aws_route_table_association" "association_pri_c" {
  subnet_id      = var.pri_c_subnet_id
  route_table_id = aws_route_table.pri_c_route.id
}

