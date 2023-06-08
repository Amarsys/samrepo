module "Subnet" {
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  az                      = "use1-az2"
}

module "Subnet" {
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  az                      = "use1-az6"
}

module "Subnet" {
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  az                      = "use1-az2"
  tags                    = {
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    Name = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1C"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    aws:cloudformation:logical-id = "SubnetPrivateUSEAST1C"
    kubernetes.io/role/internal-elb = "1"
  }
}

