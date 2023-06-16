module "subnet_8" {
 source ="./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1a"
  tags                    = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1A"
  }
}

module "subnet_9" {
 source ="./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1f"
}

module "subnet_10" {
 source ="./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1b"
  tags                    = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

