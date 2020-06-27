module "vpc" {
  source = "./modules/vpc"
}

module "igw" {
  source = "./modules/igw"
  vpc_id = "${module.vpc.vpc_id}"
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = "${module.vpc.vpc_id}"
}

module "eip" {
  source = "./modules/eip"
}

module "nat" {
  source = "./modules/nat"
  pri_a_eip_id = "${module.eip.pri_a_eip_id}"
  pub_a_subnet_id = "${module.subnets.pub_a_subnet_id}"
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = "${module.vpc.vpc_id}"
  igw_id = "${module.igw.igw_id}"
  pri_a_nat_id = "${module.nat.pri_a_nat_id}"
  pub_a_subnet_id = "${module.subnets.pub_a_subnet_id}"
  pub_c_subnet_id = "${module.subnets.pub_c_subnet_id}"
  pri_a_subnet_id = "${module.subnets.pri_a_subnet_id}"
  pri_c_subnet_id = "${module.subnets.pri_c_subnet_id}"
}

module "key_pair" {
  source = "./modules/key_pair"
}

