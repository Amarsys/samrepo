module "vpc_vpc-0ac25cb2afd684bcb" {
 source ="./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "subnet_subnet-0644cb7c5481a6d9e" {
 source ="./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1f"
}

module "subnet_subnet-0c91b0a51ebaa32a8" {
 source ="./modules/subnet"
  cidr_block              = "10.222.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags                    = {
    "Name" = "public_us-east-1c_dev_cgp"
    "Project" = "CGP"
    "Region" = "us-east-1"
    "Environment" = "Dev"
  }
}

