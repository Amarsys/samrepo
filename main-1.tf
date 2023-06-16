module "vpc_1" {
 source ="./modules/vpc"
  vpc_cidr = "172.31.0.0/16"
}

module "vpc_2" {
 source ="./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tags     = {
    "alpha.eksctl.io/cluster-name" = "kaiburr-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "Name" = "eksctl-kaiburr-cluster-cluster/VPC"
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-cluster"
  }
}

module "vpc_3" {
 source ="./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  tags     = {
    "Managed-By" = "Terraform"
    "Name" = "test-vpc"
  }
}

