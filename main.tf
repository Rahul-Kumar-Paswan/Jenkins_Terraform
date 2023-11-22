terraform {
  required_version = ">= 0.12"
}


provider "aws" {
  region     = "${var.region}"
}

module "my_vpc" {
  source                 = "./modules/network"
  vpc_cidr_block         = local.current_env.vpc_cidr_block
  env_prefix             = local.current_env.env_prefix
  public_subnet_cidr_block     = local.current_env.public_subnet_cidr_block
  private_subnet_cidr_block = local.current_env.private_subnet_cidr_block
  public_subnet_availability_zone = local.current_env.public_subnet_availability_zone
  private_subnet_availability_zone = local.current_env.private_subnet_availability_zone
}