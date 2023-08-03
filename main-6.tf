module "nat_gateway_nat-01f77ad992a4c0171" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0e4ecbe4a83269b14.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1a_nat_gw"
  }
}

module "nat_gateway_nat-0e41a84966e44b062" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0d2fa7f51fa90f14e.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1b_nat_gw"
  }
}

module "internet_gateway_igw-04d860a3cfd672f23" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags   = {
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Name" = "dev_cgp_igw"
    "Project" = "CGP"
  }
}

