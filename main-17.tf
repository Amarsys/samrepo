module "igw_route_table_4" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_1.id
  gateway_id = module.internet_gateway_4.igw_id
}

module "igw_route_table_7" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_2.id
  gateway_id = module.internet_gateway_2.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "route_table_association_6" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_8.id
  }
  route_table_id                                      = module.nat_route_table_6.route_table_id
}

