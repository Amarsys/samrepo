module "internet_gateway_3" {
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

module "internet_gateway_4" {
}

