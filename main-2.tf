module "nat_gateway_nat-02219cab44b54bb6d" {
 source ="./modules/nat_gateway"
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-b"
  }
}

module "nat_gateway_nat-00a0fb1e11af07e01" {
 source ="./modules/nat_gateway"
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-a"
  }
}

module "nat_gateway_nat-0e416b66388478ea8" {
 source ="./modules/nat_gateway"
  tags            = {
    "alpha.eksctl.io/cluster-name" = "install-training-simbir"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.147.0"
    "Name" = "eksctl-install-training-simbir-cluster/NATGateway"
  }
}

