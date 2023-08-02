module "nat_gateway_nat-0c2e47b2263db2567" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0a2b5dda4cdee923f.id
  tags            = {
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name" = "us-east-2c.eks-cgp-prod"
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

module "internet_gateway_igw-0c9701fee0c8f47a8" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

