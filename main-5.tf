module "subnet_subnet-0924c7ab5eb22c900" {
 source ="./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-07452964709d9cc87.id
  az                      = "us-east-1c"
  tags                    = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "kubernetes.io/role/elb" = "1"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1C"
  }
}

module "subnet_subnet-0b7f54fd77c59e881" {
 source ="./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0a18e3337585e7f2d.id
  az                      = "us-east-1a"
  tags                    = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "kubernetes.io/role/elb" = "1"
    "Name" = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "subnet_subnet-08bd3ebf13e6078b3" {
 source ="./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-03811f75a97cffa86.id
  az                      = "us-east-1b"
  tags                    = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1B"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
  }
}

