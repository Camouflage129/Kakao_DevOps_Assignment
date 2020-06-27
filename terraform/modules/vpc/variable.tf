variable "vpc" {
	type = map
	description = "Values Of VPC"
	default = {
		"name" = "SPDJ-TEST-VPC"
		"cidr_block" = "10.10.0.0/16"
	}
}
