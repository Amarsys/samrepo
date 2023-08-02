module "route_table_rtb-02f9808799c81d725" {
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
    "Name" = "eksctl-install-training-simbir-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "install-training-simbir"
    "alpha.eksctl.io/eksctl-version" = "0.147.0"
  }
}

