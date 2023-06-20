module "subnet_subnet-0155ddbcf6d005cda" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-07452964709d9cc87.id
  az                      = "us-east-1c"
  tags                    = {
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPrivateUSEAST1C"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
    "kubernetes.io/role/internal-elb" = "1"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
  }
}

module "nat_gateway_nat-03124bae3c96ec462" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-06922b7e140c164fb.id
  tags            = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "Name" = "eksctl-kaiburr-cluster-cluster/NATGateway"
  }
}

module "nat_gateway_nat-02219cab44b54bb6d" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0fc0d7d547dade1dc.id
  tags            = {
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-nat-gw-b"
  }
}

