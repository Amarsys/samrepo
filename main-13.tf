module "internet_gateway_4" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_1.id
}

module "nat_route_table_6" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_4.id
  tags           = {
    "Name" = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

module "nat_route_table_8" {
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

