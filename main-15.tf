module "nat_route_table_8" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags           = {
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1C"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

module "nat_route_table_9" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags           = {
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "aws:cloudformation:stack-name" = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
  }
}

module "nat_route_table_10" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_2.id
  vpc_id         = module.vpc_4.id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1A"
    "Name" = "eksctl-kaiburrEks-cluster/PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-name" = "eksctl-kaiburrEks-cluster"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

