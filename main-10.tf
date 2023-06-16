module "subnet_24" {
 source ="./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1a"
  tags                    = {
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1A"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "kubernetes.io/role/elb" = "1"
    "aws:cloudformation:logical-id" = "SubnetPublicUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "nat_gateway_1" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_24.id
  tags            = {
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:logical-id" = "NATGateway"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/NATGateway"
  }
}

module "nat_gateway_2" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_14.id
  tags            = {
    "aws:cloudformation:stack-name" = "eksctl-kaiburrEks-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburrEks"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburrEks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:logical-id" = "NATGateway"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburrEks-cluster/NATGateway"
  }
}

