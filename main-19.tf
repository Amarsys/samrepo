module "igw_route_table_2" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_3.id
  gateway_id = module.internet_gateway_1.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "igw_route_table_3" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_5.id
  gateway_id = module.internet_gateway_4.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburrEks-cluster/PublicRouteTable"
  }
}

module "igw_route_table_4" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_1.id
  gateway_id = module.internet_gateway_5.igw_id
}

