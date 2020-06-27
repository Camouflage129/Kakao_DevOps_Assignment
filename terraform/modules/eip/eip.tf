resource "aws_eip" "pri_a_eip" {
  vpc      = true
  tags = {
    Name = "${var.pri_a_eip_name}"
  }
}

