module "nat_gateway_3" {
 source ="./modules/nat_gateway"
  nat_gateway_id = "nat-05cd4bbaadf4d0d59"
  subnet_id      = module.subnet_3.id
  tags           = {
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:logical-id" = "NATGateway"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-eks-cluster/NATGateway"
  }
}

module "internet_gateway_1" {
 source ="./modules/internet_gateway"
  gateway_id = "igw-0215bdec00ad5feab"
  vpc_id     = module.vpc_3.id
  tags       = {
    "aws:cloudformation:logical-id" = "InternetGateway"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "Name" = "eksctl-kaiburr-eks-cluster/InternetGateway"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
  }
}

module "internet_gateway_2" {
 source ="./modules/internet_gateway"
  gateway_id = "igw-028572ac3629d2854"
  vpc_id     = module.vpc_2.id
  tags       = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:logical-id" = "InternetGateway"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/InternetGateway"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
  }
}

