module "nat_route_table_rtb-0cb0487bb3d371e31" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-02219cab44b54bb6d.id
  vpc_id         = module.vpc_vpc-01824193402915c0a.id
  tags           = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Environment" = "sandbox"
  }
}

module "nat_route_table_rtb-0702e297b53c755c2" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-00a0fb1e11af07e01.id
  vpc_id         = module.vpc_vpc-01824193402915c0a.id
  tags           = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Environment" = "sandbox"
  }
}

module "nat_route_table_rtb-024f129dbcf626421" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-03124bae3c96ec462.id
  vpc_id         = module.vpc_vpc-03811f75a97cffa86.id
  tags           = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

