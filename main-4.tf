module "subnet_subnet-0ca9c430f6e141541" {
 source ="./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1c"
}

module "subnet_subnet-0d815edf215e9a361" {
 source ="./modules/subnet"
  cidr_block              = "10.222.128.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags                    = {
    "Region" = "us-east-1"
    "Name" = "private_us-east-1b_dev_cgp"
    "Project" = "CGP"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-00dfe8b6613073e0d" {
 source ="./modules/subnet"
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1e"
}

