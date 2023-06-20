module "nat_gateway_nat-0f36b6713b247696a" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0b7f54fd77c59e881.id
  tags            = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/NATGateway"
  }
}

module "nat_gateway_nat-05cd4bbaadf4d0d59" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0e643c573c7daeac7.id
  tags            = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/NATGateway"
  }
}

module "nat_gateway_nat-00a0fb1e11af07e01" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-092a04285bc3f6c83.id
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-a"
  }
}

