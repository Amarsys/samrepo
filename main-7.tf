module "subnet_15" {
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az1"
  tags                    = {
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    Name = "eksctl-kaiburr-cluster-cluster/SubnetPrivateUSEAST1B"
    kubernetes.io/role/internal-elb = "1"
    aws:cloudformation:logical-id = "SubnetPrivateUSEAST1B"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
  }
}

module "subnet_16" {
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "use1-az1"
}

module "subnet_17" {
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "use1-az6"
  tags                    = {
    aws:cloudformation:logical-id = "SubnetPrivateUSEAST1A"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    kubernetes.io/role/internal-elb = "1"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    Name = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1A"
  }
}

