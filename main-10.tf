module "subnet_24" {
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_2.id
  az                      = "use1-az6"
  tags                    = {
    aws:cloudformation:stack-id = "arn:aws:cloudformation:us-east-1:164416580421:stack/eksctl-kaiburr-cluster-cluster/ac75a270-a70c-11ed-9155-12447c80f821"
    Name = "eksctl-kaiburr-cluster-cluster/SubnetPublicUSEAST1A"
    alpha.eksctl.io/eksctl-version = "0.127.0"
    alpha.eksctl.io/cluster-oidc-enabled = "true"
    alpha.eksctl.io/cluster-name = "kaiburr-cluster"
    aws:cloudformation:stack-name = "eksctl-kaiburr-cluster-cluster"
    kubernetes.io/role/elb = "1"
    aws:cloudformation:logical-id = "SubnetPublicUSEAST1A"
    eksctl.cluster.k8s.io/v1alpha1/cluster-name = "kaiburr-cluster"
  }
}

