module "igw_route_table_rtb-0b208019ff38cd799" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_vpc-07452964709d9cc87.id
  gateway_id = module.internet_gateway_igw-0215bdec00ad5feab.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "igw_route_table_rtb-042c633b40617bee3" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_vpc-0a18e3337585e7f2d.id
  gateway_id = module.internet_gateway_igw-0e65dd3b705aa4069.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburrEks-cluster/PublicRouteTable"
  }
}

module "igw_route_table_rtb-f6567f88" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_vpc-ca1dbeb7.id
  gateway_id = module.internet_gateway_igw-17a5b36c.igw_id
}

