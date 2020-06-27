resource "tls_private_key" "tf_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "aws_tf_key" {
  key_name   = var.key_name
  public_key = tls_private_key.tf_key.public_key_openssh
}
