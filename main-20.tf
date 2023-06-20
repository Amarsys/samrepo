module "igw_route_table_rtb-06219139d4aca6dbd" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_vpc-01824193402915c0a.id
  gateway_id = module.internet_gateway_igw-028f77b5e07ff6dbd.igw_id
  tags       = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
  }
}

module "igw_route_table_rtb-0909ca83f4c3f313a" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_vpc-03811f75a97cffa86.id
  gateway_id = module.internet_gateway_igw-028572ac3629d2854.igw_id
  tags       = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "route_table_association_rtb-0f402c5143c95eb75" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0777c89717e03b99a.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0f402c5143c95eb75.route_table_id
}

