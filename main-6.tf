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

module "subnet_subnet-026f31fce53415b3a" {
 source ="./modules/subnet"
  cidr_block              = "10.211.248.0/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags                    = {
    "Name" = "us-east-2a.k8s.prod.db-2"
    "type" = "db"
  }
}

module "subnet_subnet-0729c2a76945dc274" {
 source ="./modules/subnet"
  cidr_block              = "10.211.248.64/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags                    = {
    "Name" = "us-east-2b.k8s.prod.db-2"
    "type" = "db"
  }
}

