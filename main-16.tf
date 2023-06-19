module "nat_route_table_10" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_5.id
  vpc_id         = module.vpc_4.id
  tags           = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Environment" = "sandbox"
  }
}

module "nat_route_table_11" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags           = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

module "nat_route_table_12" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_5.id
  tags           = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
  }
}

