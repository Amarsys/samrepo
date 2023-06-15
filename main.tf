module "vpc_1" {
  source   = "./modules/vpc"
  vpc_cidr = "172.31.0.0/16"
}

module "vpc_2" {
  source   = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags = {
    "aws:cloudformation:logical-id"               = "VPC"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
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
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "aws:cloudformation:logical-id"               = "VPC"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/VPC"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
  }
}

module "vpc_4" {
  source   = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags = {
    "aws:cloudformation:logical-id"               = "VPC"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "Name"                                        = "eksctl-kaiburrEks-cluster/VPC"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "subnet_1" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az1"
  tags = {
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1B"
    "kubernetes.io/role/internal-elb"             = "1"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "subnet_2" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az6"
  tags = {
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1A"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1A"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

module "subnet_3" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az6"
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1A"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
  }
}

module "subnet_4" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az1"
  tags = {
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "kubernetes.io/role/elb"                      = "1"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_5" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az2"
  tags = {
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1C"
    "kubernetes.io/role/internal-elb"             = "1"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
  }
}

module "subnet_6" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az2"
}

module "subnet_7" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az6"
}

module "subnet_8" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az2"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1C"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

module "subnet_9" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az2"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1C"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1C"
  }
}

module "subnet_10" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az1"
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1B"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1B"
  }
}

module "subnet_11" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az4"
}

module "subnet_12" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az2"
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1C"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1C"
  }
}

module "subnet_13" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az1"
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1B"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
  }
}

module "subnet_14" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az6"
  tags = {
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1A"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "kubernetes.io/role/elb"                      = "1"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "subnet_15" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az1"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1B"
    "kubernetes.io/role/internal-elb"             = "1"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1B"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
  }
}

module "subnet_16" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az1"
}

module "subnet_17" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az6"
  tags = {
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1A"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1A"
  }
}

module "subnet_18" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az5"
}

module "subnet_19" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az2"
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1C"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "subnet_20" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az1"
  tags = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb"             = "1"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
  }
}

module "subnet_21" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az2"
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1C"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1C"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_22" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "use1-az6"
  tags = {
    "kubernetes.io/role/internal-elb"             = "1"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "aws:cloudformation:logical-id"               = "SubnetPrivateUSEAST1A"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "Name"                                        = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "subnet_23" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az3"
}

module "subnet_24" {
  source                  = "./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az6"
  tags = {
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "kubernetes.io/role/elb"                      = "1"
    "aws:cloudformation:logical-id"               = "SubnetPublicUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "nat_gateway_1" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_24.id
  tags = {
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:logical-id"               = "NATGateway"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/NATGateway"
  }
}

module "nat_gateway_2" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_14.id
  tags = {
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:logical-id"               = "NATGateway"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/NATGateway"
  }
}

module "nat_gateway_3" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_3.id
  tags = {
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:logical-id"               = "NATGateway"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/NATGateway"
  }
}

module "internet_gateway_1" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_3.id
  tags = {
    "aws:cloudformation:logical-id"               = "InternetGateway"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/InternetGateway"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
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
    "aws:cloudformation:logical-id"               = "InternetGateway"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/InternetGateway"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
  }
}

module "internet_gateway_3" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_4.id
  tags = {
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:logical-id"               = "InternetGateway"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "Name"                                        = "eksctl-kaiburrEks-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "internet_gateway_4" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_1.id
}

module "nat_route_table_6" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
  tags = {
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "nat_route_table_8" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1C"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
  }
}

module "nat_route_table_9" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags = {
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
  }
}

module "nat_route_table_10" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1A"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "nat_route_table_11" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "nat_route_table_12" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
  tags = {
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
  }
}

module "nat_route_table_13" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "nat_route_table_14" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1C"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1C"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "nat_route_table_16" {
  source         = "./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:logical-id"               = "PrivateRouteTableUSEAST1B"
  }
}

module "igw_route_table_2" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_3.id
  gateway_id = module.internet_gateway_1.igw_id
  tags = {
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-eks"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-eks-cluster/PublicRouteTable"
    "aws:cloudformation:logical-id"               = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
  }
}

module "igw_route_table_3" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_4.id
  gateway_id = module.internet_gateway_3.igw_id
  tags = {
    "alpha.eksctl.io/cluster-name"                = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "aws:cloudformation:logical-id"               = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburrEks-cluster"
    "Name"                                        = "eksctl-kaiburrEks-cluster/PublicRouteTable"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "igw_route_table_4" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_1.id
  gateway_id = module.internet_gateway_4.igw_id
}

module "igw_route_table_7" {
  source     = "./modules/igw_route_table"
  vpc_id     = module.vpc_2.id
  gateway_id = module.internet_gateway_2.igw_id
  tags = {
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.127.0"
    "Name"                                        = "eksctl-kaiburr-cluster-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name"                = "kaiburr-cluster"
    "aws:cloudformation:stack-name"               = "eksctl-kaiburr-cluster-cluster"
    "aws:cloudformation:stack-id"                 = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:logical-id"               = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "route_table_association_6" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_17.id
  }
  route_table_id = module.nat_route_table_6.route_table_id
}

module "route_table_association_8" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_5.id
  }
  route_table_id = module.nat_route_table_8.route_table_id
}

module "route_table_association_9" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_1.id
  }
  route_table_id = module.nat_route_table_9.route_table_id
}

module "route_table_association_10" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_22.id
  }
  route_table_id = module.nat_route_table_10.route_table_id
}

module "route_table_association_11" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_15.id
  }
  route_table_id = module.nat_route_table_11.route_table_id
}

module "route_table_association_12" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_19.id
  }
  route_table_id = module.nat_route_table_12.route_table_id
}

module "route_table_association_13" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_2.id
  }
  route_table_id = module.nat_route_table_13.route_table_id
}

module "route_table_association_14" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_8.id
  }
  route_table_id = module.nat_route_table_14.route_table_id
}

module "route_table_association_16" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_20.id
  }
  route_table_id = module.nat_route_table_16.route_table_id
}

