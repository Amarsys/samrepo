module "vpc_vpc-03622508ccabb8719" {
  source               = "./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc_vpc-040873ce6d24dfd97" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.222.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name"        = "dev_cgp_vpc"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

module "vpc_vpc-093a8f7bc7507621e" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.211.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "k8s.prod"
  }
}

module "vpc_vpc-0ac25cb2afd684bcb" {
  source               = "./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "subnet_subnet-0644cb7c5481a6d9e" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1f"
}

module "subnet_subnet-0c91b0a51ebaa32a8" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags = {
    "Name"        = "public_us-east-1c_dev_cgp"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-0d2fa7f51fa90f14e" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "public_us-east-1b_dev_cgp"
    "Project"     = "CGP"
  }
}

module "subnet_subnet-09c8b90127885ddfe" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1d"
}

module "subnet_subnet-0e4ecbe4a83269b14" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1a"
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "public_us-east-1a_dev_cgp"
  }
}

module "subnet_subnet-0ca9c430f6e141541" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1c"
}

module "subnet_subnet-0d815edf215e9a361" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.128.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags = {
    "Region"      = "us-east-1"
    "Name"        = "private_us-east-1b_dev_cgp"
    "Project"     = "CGP"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-00dfe8b6613073e0d" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1e"
}

module "subnet_subnet-088087f4cff88ba14" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1a"
}

module "subnet_subnet-0182aa467d8e9fdc4" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.64.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1a"
  tags = {
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Project"     = "CGP"
    "Name"        = "private_us-east-1a_dev_cgp"
  }
}

module "subnet_subnet-0b2b80444dc19cf85" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1b"
}

module "subnet_subnet-05f5e4f214a79b646" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.192.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags = {
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Project"     = "CGP"
    "Name"        = "private_us-east-1c_dev_cgp"
  }
}

module "subnet_subnet-026f31fce53415b3a" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.248.0/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags = {
    "Name" = "us-east-2a.k8s.prod.db-2"
    "type" = "db"
  }
}

module "subnet_subnet-0729c2a76945dc274" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.248.64/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags = {
    "Name" = "us-east-2b.k8s.prod.db-2"
    "type" = "db"
  }
}

module "subnet_subnet-0c5b94f8ad4a0e37f" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.40.64/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags = {
    "Name"                           = "us-east-2b-eks-cgp-prod-public"
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "kubernetes.io/role/elb"         = "1"
    "type"                           = "eks"
  }
}

module "subnet_subnet-0379e627f06b1fb8e" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.24.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags = {
    "Name"                                                     = "us-east-2a-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/internal-elb"                          = "1"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "SubnetType"                                               = "Private"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "kubernetes.io/cluster/cgp-prod"                           = "shared"
  }
}

module "subnet_subnet-08b9315c38cbe0d1f" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2a"
}

module "subnet_subnet-08826711deab4dd2b" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.28.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags = {
    "Name"                                                     = "us-east-2b-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "kubernetes.io/cluster/cgp-prod"                           = "shared"
    "kubernetes.io/role/internal-elb"                          = "1"
    "SubnetType"                                               = "Private"
  }
}

module "subnet_subnet-03039b1456ea05ec2" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.0.16/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags = {
    "Name" = "us-east-2b.k8s.prod.db"
    "type" = "db"
  }
}

module "subnet_subnet-068258798beb2d770" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2c"
}

module "subnet_subnet-02a33bec4362e3fc9" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.248.128/26"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags = {
    "type" = "db"
    "Name" = "us-east-2c.k8s.prod.db-2"
  }
}

module "subnet_subnet-0fb1aff5e4d8be3b6" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.40.128/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags = {
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "type"                           = "eks"
    "Name"                           = "us-east-2c-eks-cgp-prod-public"
    "kubernetes.io/role/elb"         = "1"
  }
}

module "subnet_subnet-0b94159f676d55002" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.0.0/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags = {
    "Name" = "us-east-2a.k8s.prod.db"
    "type" = "db"
  }
}

module "subnet_subnet-0ee9bbd043ee90178" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.36.16/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags = {
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "AssociatedNatgateway"                                     = "nat-009a3b090e7e1b2e4"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name"                                                     = "us-east-2b-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb"                                   = "1"
    "SubnetType"                                               = "Utility"
  }
}

module "subnet_subnet-04080f8eb69e495ea" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.0.32/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags = {
    "type" = "db"
    "Name" = "us-east-2c.k8s.prod.db"
  }
}

module "subnet_subnet-08a76bd3b313c7ca9" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2b"
}

module "subnet_subnet-04aa0e1275bceb3c2" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.36.0/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags = {
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "SubnetType"                                               = "Utility"
    "Name"                                                     = "us-east-2a-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb"                                   = "1"
    "AssociatedNatgateway"                                     = "nat-089f7e7225591efe2"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
  }
}

module "subnet_subnet-0790bd49408a2a74a" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.40.0/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags = {
    "kubernetes.io/role/elb"         = "1"
    "type"                           = "eks"
    "Name"                           = "us-east-2a-eks-cgp-prod-public"
    "kubernetes.io/cluster/cgp-prod" = "shared"
  }
}

module "subnet_subnet-0a2b5dda4cdee923f" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.36.32/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags = {
    "Name"                                                     = "us-east-2c-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb"                                   = "1"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "AssociatedNatgateway"                                     = "nat-0c2e47b2263db2567"
    "SubnetType"                                               = "Utility"
  }
}

module "subnet_subnet-0fff9638667c0c847" {
  source                  = "./modules/subnet"
  cidr_block              = "10.211.32.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags = {
    "Name"                                                     = "us-east-2c-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/internal-elb"                          = "1"
    "kubernetes.io/cluster/cgp-prod"                           = "shared"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "SubnetType"                                               = "Private"
  }
}

module "nat_gateway_nat-01b8ab26778951cf4" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0c91b0a51ebaa32a8.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1c_nat_gw"
  }
}

module "nat_gateway_nat-01f77ad992a4c0171" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0e4ecbe4a83269b14.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1a_nat_gw"
  }
}

module "nat_gateway_nat-0e41a84966e44b062" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0d2fa7f51fa90f14e.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1b_nat_gw"
  }
}

module "nat_gateway_nat-089f7e7225591efe2" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-04aa0e1275bceb3c2.id
  tags = {
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name"                                                     = "us-east-2a.eks-cgp-prod"
  }
}

module "nat_gateway_nat-009a3b090e7e1b2e4" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0ee9bbd043ee90178.id
  tags = {
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name"                                                     = "us-east-2b.eks-cgp-prod"
  }
}

module "nat_gateway_nat-0c2e47b2263db2567" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0a2b5dda4cdee923f.id
  tags = {
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name"                                                     = "us-east-2c.eks-cgp-prod"
  }
}

module "internet_gateway_igw-04d860a3cfd672f23" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "dev_cgp_igw"
    "Project"     = "CGP"
  }
}

module "internet_gateway_igw-0c9701fee0c8f47a8" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

module "internet_gateway_igw-01e552d5b9e0f452d" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-0ac25cb2afd684bcb.id
}

module "internet_gateway_igw-0f58768ebd04c56e7" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-093a8f7bc7507621e.id
  tags = {
    "Name" = "k8s.prod-gw"
  }
}

module "route_table_rtb-0f6ca3beb1533a60d" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-01b8ab26778951cf4.id
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "10.222.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-01b8ab26778951cf4"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "dev_cgp_us-east-1c_private_rt"
    "Project"     = "CGP"
  }
}

module "route_table_rtb-0be60bded8a0c01bb" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-0e41a84966e44b062.id
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "10.222.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-0e41a84966e44b062"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Environment" = "Dev"
    "Project"     = "CGP"
    "Name"        = "dev_cgp_us-east-1b_private_rt"
    "Region"      = "us-east-1"
  }
}

module "route_table_rtb-06c4a26d3327b6ec0" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-01f77ad992a4c0171.id
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "10.222.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-01f77ad992a4c0171"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Name"        = "dev_cgp_us-east-1a_private_rt"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Project"     = "CGP"
  }
}

module "route_table_rtb-0d6c90029a4fbe89c" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-009a3b090e7e1b2e4.id
  routes = [
    {
      "destinationCidrBlock" = "10.211.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "10.0.0.0/8"
      "transitGatewayId"     = "tgw-0c24f5d0cffeffa41"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-009a3b090e7e1b2e4"
    }
  ]
  vpc_id = module.vpc_vpc-093a8f7bc7507621e.id
  tags = {
    "Name"                                                     = "private-us-east-2b.eks-cgp-prod"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "kubernetes.io/kops/role"                                  = "private-us-east-2b"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
  }
}

module "route_table_rtb-0fce8d9e5dc67c913" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-089f7e7225591efe2.id
  routes = [
    {
      "destinationCidrBlock" = "10.211.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "10.0.0.0/8"
      "transitGatewayId"     = "tgw-0c24f5d0cffeffa41"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-089f7e7225591efe2"
    }
  ]
  vpc_id = module.vpc_vpc-093a8f7bc7507621e.id
  tags = {
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/kops/role"                                  = "private-us-east-2a"
    "Name"                                                     = "private-us-east-2a.eks-cgp-prod"
  }
}

module "route_table_rtb-09f238332a6a9b4a6" {
  source         = "./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-0c2e47b2263db2567.id
  routes = [
    {
      "destinationCidrBlock" = "10.211.0.0/16"
      "gatewayId"            = "local"
    },
    {
      "destinationCidrBlock" = "10.0.0.0/8"
      "transitGatewayId"     = "tgw-0c24f5d0cffeffa41"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-0c2e47b2263db2567"
    }
  ]
  vpc_id = module.vpc_vpc-093a8f7bc7507621e.id
  tags = {
    "kubernetes.io/kops/role"                                  = "private-us-east-2c"
    "Name"                                                     = "private-us-east-2c.eks-cgp-prod"
    "KubernetesCluster"                                        = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
  }
}

