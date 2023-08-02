module "vpc_vpc-03622508ccabb8719" {
 source ="./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc_vpc-040873ce6d24dfd97" {
 source ="./modules/vpc"
  vpc_cidr             = "10.222.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = {
    "Name" = "dev_cgp_vpc"
    "Project" = "CGP"
    "Region" = "us-east-1"
    "Environment" = "Dev"
  }
}

module "vpc_vpc-093a8f7bc7507621e" {
 source ="./modules/vpc"
  vpc_cidr             = "10.211.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = {
    "Name" = "k8s.prod"
  }
}

