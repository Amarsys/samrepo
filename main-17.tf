module "nat_route_table_rtb-0dbea13d546f4ede6" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-0f36b6713b247696a.id
  vpc_id         = module.vpc_vpc-0a18e3337585e7f2d.id
  tags           = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
  }
}

module "nat_route_table_rtb-05cc63256aba18e9b" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-0f36b6713b247696a.id
  vpc_id         = module.vpc_vpc-0a18e3337585e7f2d.id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1A"
  }
}

module "nat_route_table_rtb-0b7b8113a22090948" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-03124bae3c96ec462.id
  vpc_id         = module.vpc_vpc-03811f75a97cffa86.id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

