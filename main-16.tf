module "nat_route_table_11" {
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags           = {
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
    aws:cloudformation:logical-id = "PrivateRouteTableUSEAST1B"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    Name = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1B"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
  }
}

module "nat_route_table_12" {
  nat_gateway_id = module.nat_gateway_3.id
  vpc_id         = module.vpc_3.id
  tags           = {
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    aws:cloudformation:logical-id = "PrivateRouteTableUSEAST1C"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    Name = "eksctl-kaiburr-eks-cluster/PrivateRouteTableUSEAST1C"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
  }
}

module "nat_route_table_13" {
  nat_gateway_id = module.nat_gateway_1.id
  vpc_id         = module.vpc_2.id
  tags           = {
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
    aws:cloudformation:logical-id = "PrivateRouteTableUSEAST1A"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
    Name = "eksctl-kaiburr-cluster-cluster/PrivateRouteTableUSEAST1A"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
  }
}

