module "nat_route_table_14" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags           = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1C"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1C"
    "aws:cloudformation:stack-name" = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "nat_route_table_16" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "Name" = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1B"
  }
}

