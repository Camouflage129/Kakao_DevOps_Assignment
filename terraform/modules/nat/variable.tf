variable "pri_a_eip_id" {
  type = string
  description = "PRIVATE A ZONE Elastic IP"
}

variable "pub_a_subnet_id" {
  type = string
  description = "PUBLIC SUBNET A ZONE ID"
}

variable "nat_a_name" {
  type = string
  description = "NAT GATEWAY A ZONE NAME"
  default = "SPDJ-TEST-VPC-NAT-A"
}

