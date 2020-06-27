variable "vpc_id" {
  type = string
  description = "VPC ID"
}

variable "pub_a_subnet" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-PUB-A"
    "cidr_block" = "10.10.10.0/24"
    "availability_zone" = "ap-northeast-2a"
  }
}

variable "pri_a_subnet" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-PRI-A"
    "cidr_block" = "10.10.30.0/24"
    "availability_zone" = "ap-northeast-2a"
  }
}

variable "pub_c_subnet" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-PUB-C"
    "cidr_block" = "10.10.20.0/24"
    "availability_zone" = "ap-northeast-2c"
  }
}

variable "pri_c_subnet" {
  type = map
  default = {
    "name" = "SPDJ-TEST-VPC-PRI-C"
    "cidr_block" = "10.10.40.0/24"
    "availability_zone" = "ap-northeast-2c"
  }
}

