module "subnet_subnet-06922b7e140c164fb" {
 source ="./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03811f75a97cffa86.id
  az                      = "us-east-1a"
  tags                    = {
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "kubernetes.io/role/elb" = "1"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "subnet_subnet-01c47000df369b6fb" {
 source ="./modules/subnet"
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-03811f75a97cffa86.id
  az                      = "us-east-1a"
  tags                    = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1A"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

module "subnet_subnet-0625ded7cd9ba3e58" {
 source ="./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0a18e3337585e7f2d.id
  az                      = "us-east-1b"
  tags                    = {
    "kubernetes.io/role/elb" = "1"
    "Name" = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

