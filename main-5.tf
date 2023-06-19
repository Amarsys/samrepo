module "subnet_8" {
 source ="./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
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

module "subnet_9" {
 source ="./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_5.id
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

module "subnet_10" {
 source ="./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
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

