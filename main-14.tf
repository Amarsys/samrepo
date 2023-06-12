module "nat_route_table_5" {
 source ="./modules/nat_route_table"
  vpc_id         = module.vpc_2.id
}

module "nat_route_table_6" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
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

module "nat_route_table_7" {
 source ="./modules/nat_route_table"
  vpc_id         = module.vpc_2.id
  tags           = {
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/PublicRouteTable"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:logical-id" = "PublicRouteTable"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

