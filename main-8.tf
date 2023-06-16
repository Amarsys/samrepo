module "subnet_17" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1c"
  tags                    = {
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1C"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
  }
}

module "subnet_18" {
 source ="./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1c"
}

module "subnet_19" {
 source ="./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1a"
}

