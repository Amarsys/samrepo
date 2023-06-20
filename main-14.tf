module "internet_gateway_igw-028572ac3629d2854" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-03811f75a97cffa86.id
  tags   = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/InternetGateway"
  }
}

module "internet_gateway_igw-028f77b5e07ff6dbd" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-01824193402915c0a.id
  tags   = {
    "Environment" = "sandbox"
    "Name" = "kaiburr-sandbox-igw"
    "Managed_by" = "Terraform"
    "Owner" = "kaiburr"
  }
}

module "internet_gateway_igw-0e65dd3b705aa4069" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-0a18e3337585e7f2d.id
  tags   = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

