module "subnet_20" {
 source ="./modules/subnet"
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "us-east-1c"
  tags                    = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-cluster-cluster"
    "kubernetes.io/role/elb" = "1"
    "Name" = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1C"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    "aws:cloudformation:logical-id" = "SubnetPublicUSEAST1C"
  }
}

module "subnet_21" {
 source ="./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1d"
}

module "subnet_22" {
 source ="./modules/subnet"
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_4.id
  az                      = "us-east-1b"
  tags                    = {
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1B"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "aws:cloudformation:logical-id" = "SubnetPublicUSEAST1B"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "kubernetes.io/role/elb" = "1"
  }
}

