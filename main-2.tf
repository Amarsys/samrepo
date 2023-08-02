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

module "subnet_subnet-0d2fa7f51fa90f14e" {
 source ="./modules/subnet"
  cidr_block              = "10.222.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags                    = {
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Name" = "public_us-east-1b_dev_cgp"
    "Project" = "CGP"
  }
}

module "subnet_subnet-09c8b90127885ddfe" {
 source ="./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1d"
}

