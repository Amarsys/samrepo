module "subnet_26" {
 source ="./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1b"
  tags                    = {
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "kubernetes.io/role/elb" = "1"
  }
}

module "subnet_27" {
 source ="./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1b"
}

module "subnet_28" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1c"
  tags                    = {
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

