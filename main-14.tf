module "internet_gateway_igw-0215bdec00ad5feab" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-07452964709d9cc87.id
  tags   = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-eks-cluster/InternetGateway"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
  }
}

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

