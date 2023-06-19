module "nat_gateway_4" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_4.id
  tags            = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/NATGateway"
  }
}

module "nat_gateway_5" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_3.id
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-a"
  }
}

module "internet_gateway_1" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_3.id
  tags   = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-eks-cluster/InternetGateway"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
  }
}

