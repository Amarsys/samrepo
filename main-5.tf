module "subnet_subnet-0b2b80444dc19cf85" {
 source ="./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1b"
}

module "subnet_subnet-05f5e4f214a79b646" {
 source ="./modules/subnet"
  cidr_block              = "10.222.192.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags                    = {
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Project" = "CGP"
    "Name" = "private_us-east-1c_dev_cgp"
  }
}

module "nat_gateway_nat-01b8ab26778951cf4" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0c91b0a51ebaa32a8.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1c_nat_gw"
  }
}

