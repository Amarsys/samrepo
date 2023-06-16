module "subnet_23" {
 source ="./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_1.id
  az                      = "us-east-1b"
}

module "subnet_24" {
 source ="./modules/subnet"
  cidr_block              = "192.168.160.0/19"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_4.id
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

module "subnet_25" {
 source ="./modules/subnet"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_3.id
  az                      = "us-east-1e"
  tags                    = {
    "Managed-By" = "Terraform"
    "Name" = "test-subnet-1"
  }
}

