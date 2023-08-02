module "subnet_subnet-088087f4cff88ba14" {
 source ="./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1a"
}

module "subnet_subnet-0182aa467d8e9fdc4" {
 source ="./modules/subnet"
  cidr_block              = "10.222.64.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1a"
  tags                    = {
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Project" = "CGP"
    "Name" = "private_us-east-1a_dev_cgp"
  }
}

module "subnet_subnet-0b2b80444dc19cf85" {
 source ="./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1b"
}

