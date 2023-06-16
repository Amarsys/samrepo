module "nat_route_table_17" {
 source ="./modules/nat_route_table"
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_4.id
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

module "igw_route_table_2" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_4.id
  gateway_id = module.internet_gateway_1.igw_id
  tags       = {
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

module "igw_route_table_3" {
 source ="./modules/igw_route_table"
  vpc_id     = module.vpc_5.id
  gateway_id = module.internet_gateway_3.igw_id
  tags       = {
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

