resource "aws_nat_gateway" "pri_a_nat" {
  allocation_id = var.pri_a_eip_id
  subnet_id     = var.pub_a_subnet_id

  tags = {
    Name = "${var.nat_a_name}"
  }
}
