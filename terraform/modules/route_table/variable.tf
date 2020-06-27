variable "vpc_id" {
  type = string
  description = "VPC ID"
}

variable "igw_id" {
  type = string
  description = "Internet GateWay ID"
}

variable "pri_a_nat_id" {
  type = string
  description = "Nat GateWay ID"
}

variable "pub_a_subnet_id" {
  type = string
  description = "Public Subnet A ZONE ID"
}

variable "pri_a_subnet_id" {
  type = string
  description = "PRIVATE SUBNET A ZONE ID"
}

variable "pub_c_subnet_id" {
  type = string
  description = "PUBLIC SUBNET C ZONE ID"
}

variable "pri_c_subnet_id" {
  type = string
  description = "PRIVATE SUBNET C ZONE ID"
}

variable "pub_a_route" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-ROUTE-PUB-A"
    "cidr_block" = "0.0.0.0/0"
  }
}

variable "pri_a_route" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-ROUTE-PRI-A"
    "cidr_block" = "0.0.0.0/0"
  }
}

variable "pub_c_route" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-ROUTE-PUB-C"
    "cidr_block" = "0.0.0.0/0"
  }
}

variable "pri_c_route" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-ROUTE-PRI-C"
    "cidr_block" = "0.0.0.0/0"
  }
}

