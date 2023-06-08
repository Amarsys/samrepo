module "Subnet" {
  cidr_block              = "192.168.64.0/19"
  map_public_ip_on_launch = true
  az                      = "use1-az2"
  tags                    = {
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    Name = "eksctl-kaiburrEks-cluster/SubnetPublicUSEAST1C"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    kubernetes.io/role/elb = "1"
    aws:cloudformation:logical-id = "SubnetPublicUSEAST1C"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
  }
}

module "Subnet" {
  cidr_block              = "192.168.96.0/19"
  map_public_ip_on_launch = false
  az                      = "use1-az6"
  tags                    = {
    kubernetes.io/role/internal-elb = "1"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    aws:cloudformation:logical-id = "SubnetPrivateUSEAST1A"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    Name = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1A"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
  }
}

module "Subnet" {
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  az                      = "use1-az3"
}

