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

module "subnet_subnet-0820a8571cea612b4" {
 source ="./modules/subnet"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-01824193402915c0a.id
  az                      = "us-east-1a"
  tags                    = {
    "Name" = "kaiburr-sandbox-private-sn-a"
    "Environment" = "sandbox"
    "Managed_by" = "Terraform"
    "Owner" = "kaiburr"
  }
}

module "subnet_subnet-09e0aa166d38b49a0" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-03811f75a97cffa86.id
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

