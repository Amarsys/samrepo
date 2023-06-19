module "internet_gateway_2" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_2.id
  tags   = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/InternetGateway"
  }
}

module "internet_gateway_3" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_4.id
  tags   = {
    "Environment" = "sandbox"
    "Name" = "kaiburr-sandbox-igw"
    "Managed_by" = "Terraform"
    "Owner" = "kaiburr"
  }
}

module "internet_gateway_4" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_5.id
  tags   = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

