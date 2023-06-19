module "vpc_1" {
  source   = "./modules/vpc"
  vpc_cidr = "172.31.0.0/16"
}

module "vpc_2" {
  source   = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/VPC"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "vpc_3" {
  source   = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/VPC"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
  }
}

module "vpc_4" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  tags = {
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
    "Name"        = "kaiburr-sandbox-vpc"
    "Environment" = "sandbox"
  }
}

module "vpc_5" {
  source   = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags = {
    "Name"                                        = "eksctl-kaiburrEks-cluster/VPC"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "subnet_1" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1b"
  tags = {
    "kubernetes.io/role/internal-elb"             = "1"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_2" {
  source                  = "./modules/subnet"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1b"
  tags = {
    "Managed_by"  = "Terraform"
    "Name"        = "kaiburr-sandbox-private-sn-b"
    "Environment" = "sandbox"
    "Owner"       = "kaiburr"
  }
}

module "subnet_3" {
  source                  = "./modules/subnet"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1a"
  tags = {
    "Environment" = "sandbox"
    "Name"        = "kaiburr-sandbox-public-sn-a"
    "Managed_by"  = "Terraform"
    "Owner"       = "kaiburr"
  }
}

module "subnet_4" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1a"
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
  }
}

module "subnet_5" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1c"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

module "subnet_6" {
  source                  = "./modules/subnet"
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1b"
  tags = {
    "Managed_by"  = "Terraform"
    "Name"        = "kaiburr-sandbox-public-sn-b"
    "Environment" = "sandbox"
    "Owner"       = "kaiburr"
  }
}

module "subnet_7" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1b"
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "kubernetes.io/role/elb"                      = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1B"
  }
}

module "subnet_8" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1c"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1C"
  }
}

module "subnet_9" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1a"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "subnet_10" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1b"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1B"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
  }
}

module "subnet_11" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1a"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1A"
  }
}

module "subnet_12" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1f"
}

module "subnet_13" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1b"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "subnet_14" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1c"
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1C"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "kubernetes.io/role/elb"                      = "1"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_15" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1a"
  tags = {
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_16" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1e"
}

module "subnet_17" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1a"
  tags = {
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "subnet_18" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1a"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1A"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

module "subnet_19" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_5.id
  az                      = "us-east-1b"
  tags = {
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_20" {
  source                  = "./modules/subnet"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1a"
  tags = {
    "Name"        = "kaiburr-sandbox-private-sn-a"
    "Environment" = "sandbox"
    "Managed_by"  = "Terraform"
    "Owner"       = "kaiburr"
  }
}

module "subnet_21" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1c"
  tags = {
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1C"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
  }
}

module "subnet_22" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1c"
}

module "subnet_23" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1a"
}

module "subnet_24" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1c"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1C"
  }
}

module "subnet_25" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1d"
}

module "subnet_26" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1b"
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
  }
}

module "subnet_27" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1b"
}

module "subnet_28" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1c"
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "nat_gateway_1" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_17.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/NATGateway"
  }
}

module "nat_gateway_2" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_6.id
  tags = {
    "Environment" = "sandbox"
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
    "Name"        = "kaiburr-sandbox-nat-gw-b"
  }
}

module "nat_gateway_3" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_9.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/NATGateway"
  }
}

module "nat_gateway_4" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_4.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/NATGateway"
  }
}

module "nat_gateway_5" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_3.id
  tags = {
    "Environment" = "sandbox"
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
    "Name"        = "kaiburr-sandbox-nat-gw-a"
  }
}

module "internet_gateway_1" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_3.id
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/InternetGateway"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
  }
}

module "internet_gateway_2" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_2.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/InternetGateway"
  }
}

module "internet_gateway_3" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_4.id
  tags = {
    "Environment" = "sandbox"
    "Name"        = "kaiburr-sandbox-igw"
    "Managed_by"  = "Terraform"
    "Owner"       = "kaiburr"
  }
}

module "internet_gateway_4" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_5.id
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "internet_gateway_5" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_1.id
}

module "nat_route_table_6" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_4.id
  vpc_id         = module.vpc_3.id
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "nat_route_table_8" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags = {
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
    "Environment" = "sandbox"
  }
}

module "nat_route_table_10" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_5.id
  vpc_id         = module.vpc_4.id
  tags = {
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
    "Environment" = "sandbox"
  }
}

module "nat_route_table_11" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "nat_route_table_12" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_5.id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
  }
}

module "nat_route_table_13" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_5.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1A"
  }
}

module "nat_route_table_14" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "nat_route_table_15" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_4.id
  vpc_id         = module.vpc_3.id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
  }
}

module "nat_route_table_16" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "nat_route_table_17" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_5.id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
  }
}

module "nat_route_table_20" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_4.id
  vpc_id         = module.vpc_3.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
  }
}

module "igw_route_table_2" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_3.id
  gateway_id = module.internet_gateway_1.igw_id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "igw_route_table_3" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_5.id
  gateway_id = module.internet_gateway_4.igw_id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PublicRouteTable"
  }
}

module "igw_route_table_4" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_1.id
  gateway_id = module.internet_gateway_5.igw_id
}

module "igw_route_table_7" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_4.id
  gateway_id = module.internet_gateway_3.igw_id
  tags = {
    "Environment" = "sandbox"
    "Owner"       = "kaiburr"
    "Managed_by"  = "Terraform"
  }
}

module "igw_route_table_9" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_2.id
  gateway_id = module.internet_gateway_2.igw_id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "route_table_association_6" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_11.id
  }
  route_table_id = module.nat_route_table_6.route_table_id
}

module "route_table_association_8" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_2.id
  }
  route_table_id = module.nat_route_table_8.route_table_id
}

module "route_table_association_10" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_20.id
  }
  route_table_id = module.nat_route_table_10.route_table_id
}

module "route_table_association_11" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_21.id
  }
  route_table_id = module.nat_route_table_11.route_table_id
}

module "route_table_association_12" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_1.id
  }
  route_table_id = module.nat_route_table_12.route_table_id
}

module "route_table_association_13" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_15.id
  }
  route_table_id = module.nat_route_table_13.route_table_id
}

module "route_table_association_14" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_10.id
  }
  route_table_id = module.nat_route_table_14.route_table_id
}

module "route_table_association_15" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_28.id
  }
  route_table_id = module.nat_route_table_15.route_table_id
}

module "route_table_association_16" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_18.id
  }
  route_table_id = module.nat_route_table_16.route_table_id
}

module "route_table_association_17" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_5.id
  }
  route_table_id = module.nat_route_table_17.route_table_id
}

module "route_table_association_20" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_13.id
  }
  route_table_id = module.nat_route_table_20.route_table_id
}

