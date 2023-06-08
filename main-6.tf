module "Subnet" {
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  az                      = "use1-az2"
  tags                    = {
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    kubernetes.io/role/elb = "1"
    aws:cloudformation:logical-id = "SubnetPublicUSEAST1C"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    Name = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1C"
  }
}

module "Subnet" {
  cidr_block              = "192.168.32.0/19"
  map_public_ip_on_launch = true
  az                      = "use1-az1"
  tags                    = {
    Name = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1B"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    aws:cloudformation:logical-id = "SubnetPublicUSEAST1B"
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    kubernetes.io/role/elb = "1"
  }
}

module "Subnet" {
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  az                      = "use1-az6"
  tags                    = {
    aws:cloudformation:logical-id = "SubnetPublicUSEAST1A"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    kubernetes.io/role/elb = "1"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    Name = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1A"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
  }
}

