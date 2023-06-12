module "internet_gateway_1" {
  vpc_id = "[vpc-07452964709d9cc87]"
  tags   = {
    aws:cloudformation:logical-id = "InternetGateway"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-eks-cluster/b3e45610-a251-11ed-8758-1297053ce6d9"
    Name = "eksctl-kaiburr-eks-cluster/InternetGateway"
    aws:cloudformation:stack-name = "eksctl-kaiburr-eks-cluster"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-eks"
    alpha.eksctl.io/cluster-name = "kaiburr-eks"
  }
}

module "internet_gateway_2" {
  vpc_id = "[vpc-03811f75a97cffa86]"
  tags   = {
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:logical-id = "InternetGateway"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    Name = "eksctl-kaiburr-cluster-cluster/InternetGateway"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
  }
}

module "internet_gateway_3" {
  vpc_id = "[vpc-0a18e3337585e7f2d]"
  tags   = {
    alpha.eksctl.io/eksctl-version = "0.127.0"
    aws:cloudformation:logical-id = "InternetGateway"
    aws:cloudformation:stack-name = "eksctl-kaiburrEks-cluster"
    Name = "eksctl-kaiburrEks-cluster/InternetGateway"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburrEks-cluster/9c9ee500-ac7a-11ed-994f-0af03e412367"
    alpha.eksctl.io/cluster-name = "kaiburrEks"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburrEks"
  }
}

