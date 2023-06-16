module "subnet_18" {
 source ="./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1f"
}

module "subnet_19" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1c"
  tags                    = {
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1C"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "aws:cloudformation:logical-id" = "SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

module "subnet_20" {
 source ="./modules/subnet"
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1b"
  tags                    = {
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb" = "1"
    "aws:cloudformation:logical-id" = "SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "aws:cloudformation:stack-id" = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1B"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "aws:cloudformation:stack-name" = "eksctl-kaiburr-eks-cluster"
  }
}

