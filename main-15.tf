module "internet_gateway_igw-0e65dd3b705aa4069" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-0a18e3337585e7f2d.id
  tags   = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/InternetGateway"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
  }
}

module "internet_gateway_igw-17a5b36c" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-ca1dbeb7.id
}

module "nat_route_table_rtb-0f402c5143c95eb75" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_nat-05cd4bbaadf4d0d59.id
  vpc_id         = module.vpc_vpc-07452964709d9cc87.id
  tags           = {
    "Name" = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

