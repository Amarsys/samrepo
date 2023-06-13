module "route_table_association_2" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_3.subnet_id
  subnet_2 = module.subnet_13.subnet_id
  subnet_3 = module.subnet_12.subnet_id
  }
  tags           = {
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/PublicRouteTable"
    "aws:cloudformation:logical-id" = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
  }
}

module "route_table_association_3" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_14.subnet_id
  subnet_2 = module.subnet_21.subnet_id
  subnet_3 = module.subnet_4.subnet_id
  }
  tags           = {
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "aws:cloudformation:logical-id" = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-name" = "eksctl-kaiburrEks-cluster"
    "Name" = "eksctl-kaiburrEks-cluster/PublicRouteTable"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

module "route_table_association_6" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_17.subnet_id
  }
  route_table_id = module.nat_route_table_6.route_table_id
  tags           = {
    "Name" = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1A"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:logical-id" = "PrivateRouteTableUSEAST1A"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

