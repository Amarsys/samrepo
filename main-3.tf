module "route_table_rtb-0cb0487bb3d371e31" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-02219cab44b54bb6d.id
  routes         = [
  {
    "destinationCidrBlock" = "10.0.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-02219cab44b54bb6d"
  }
  ]
  vpc_id         = module.vpc_vpc-01824193402915c0a.id
  tags           = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Environment" = "sandbox"
  }
}

module "route_table_rtb-0702e297b53c755c2" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-00a0fb1e11af07e01.id
  routes         = [
  {
    "destinationCidrBlock" = "10.0.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-00a0fb1e11af07e01"
  }
  ]
  vpc_id         = module.vpc_vpc-01824193402915c0a.id
  tags           = {
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Environment" = "sandbox"
  }
}

module "route_table_rtb-04c2cc2ca86a49347" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-0e416b66388478ea8.id
  routes         = [
  {
    "destinationCidrBlock" = "192.168.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-0e416b66388478ea8"
  }
  ]
  vpc_id         = module.vpc_vpc-03707a836eae63075.id
  tags           = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-install-training-simbir-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.147.0"
  }
}

