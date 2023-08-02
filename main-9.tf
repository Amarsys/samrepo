module "subnet_subnet-02a33bec4362e3fc9" {
 source ="./modules/subnet"
  cidr_block              = "10.211.248.128/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags                    = {
    "type" = "db"
    "Name" = "us-east-2c.k8s.prod.db-2"
  }
}

module "subnet_subnet-0fb1aff5e4d8be3b6" {
 source ="./modules/subnet"
  cidr_block              = "10.211.40.128/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags                    = {
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "type" = "eks"
    "Name" = "us-east-2c-eks-cgp-prod-public"
    "kubernetes.io/role/elb" = "1"
  }
}

module "subnet_subnet-0b94159f676d55002" {
 source ="./modules/subnet"
  cidr_block              = "10.211.0.0/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags                    = {
    "Name" = "us-east-2a.k8s.prod.db"
    "type" = "db"
  }
}

