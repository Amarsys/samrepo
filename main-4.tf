module "subnet_subnet-03385fcee5457b536" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-0a18e3337585e7f2d.id
  az                      = "us-east-1c"
  tags                    = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

module "subnet_subnet-0fc0d7d547dade1dc" {
 source ="./modules/subnet"
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-01824193402915c0a.id
  az                      = "us-east-1b"
  tags                    = {
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-public-sn-b"
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
  }
}

module "subnet_subnet-04300872857f03c3a" {
 source ="./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03811f75a97cffa86.id
  az                      = "us-east-1b"
  tags                    = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "kubernetes.io/role/elb" = "1"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1B"
  }
}

