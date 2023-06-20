module "nat_gateway_nat-03124bae3c96ec462" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-06922b7e140c164fb.id
  tags            = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/NATGateway"
  }
}

module "nat_gateway_nat-02219cab44b54bb6d" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0fc0d7d547dade1dc.id
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-b"
  }
}

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

