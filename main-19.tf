module "route_table_association_10" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_22.subnet_id
  }
  route_table_id = module.nat_route_table_10.route_table_id
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

module "route_table_association_11" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_15.subnet_id
  }
  route_table_id = module.nat_route_table_11.route_table_id
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1B"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1B"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "route_table_association_12" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_19.subnet_id
  }
  route_table_id = module.nat_route_table_12.route_table_id
  tags           = {
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "Name" = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1C"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
  }
}

