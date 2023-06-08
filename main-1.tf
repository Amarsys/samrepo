module "Vpc" {
  vpc_cidr = "172.31.0.0/16"
}

module "Vpc" {
  vpc_cidr = "192.168.0.0/16"
  tags     = {
    aws:cloudformation:logical-id = "VPC"
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    Name = "eksctl-kaiburr-cluster-cluster/VPC"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
  }
}

module "Vpc" {
  vpc_cidr = "192.168.0.0/16"
  tags     = {
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    aws:cloudformation:logical-id = "VPC"
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    Name = "eksctl-kaiburr-eks-cluster/VPC"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
  }
}

module "Vpc" {
  vpc_cidr = "192.168.0.0/16"
  tags     = {
    aws:cloudformation:logical-id = "VPC"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    Name = "eksctl-kaiburrEks-cluster/VPC"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    alpha.eksctl.io/eksctl-version = "0.127.0"
  }
}

module "Subnet" {
  cidr_block              = "192.168.128.0/19"
  map_public_ip_on_launch = false
  az                      = "use1-az1"
  tags                    = {
    aws:cloudformation:logical-id = "SubnetPrivateUSEAST1B"
    kubernetes.io/role/internal-elb = "1"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    Name = "eksctl-kaiburrEks-cluster/SubnetPrivateUSEAST1B"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
  }
}

