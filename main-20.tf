module "route_table_association_13" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_2.subnet_id
  }
  route_table_id = module.nat_route_table_13.route_table_id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "route_table_association_14" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_8.subnet_id
  }
  route_table_id = module.nat_route_table_14.route_table_id
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

module "route_table_association_16" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_20.subnet_id
  }
  route_table_id = module.nat_route_table_16.route_table_id
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

