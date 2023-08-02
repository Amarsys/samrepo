module "vpc_vpc-ca1dbeb7" {
 source ="./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc_vpc-01824193402915c0a" {
 source ="./modules/vpc"
  vpc_cidr             = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-vpc"
    "Environment" = "sandbox"
  }
}

module "vpc_vpc-03707a836eae63075" {
 source ="./modules/vpc"
  vpc_cidr             = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = {
    "alpha.eksctl.io/eksctl-version" = "0.147.0"
    "alpha.eksctl.io/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "install-training-simbir"
    "Name" = "eksctl-install-training-simbir-cluster/VPC"
  }
}

