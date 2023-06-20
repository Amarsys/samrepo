module "subnet_subnet-092a04285bc3f6c83" {
 source ="./modules/subnet"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-01824193402915c0a.id
  az                      = "us-east-1a"
  tags                    = {
    "Environment" = "sandbox"
    "Name" = "kaiburr-sandbox-public-sn-a"
    "Managed_by" = "Terraform"
    "Owner" = "kaiburr"
  }
}

module "subnet_subnet-0f6c1a37a7c2ae9ba" {
 source ="./modules/subnet"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-01824193402915c0a.id
  az                      = "us-east-1b"
  tags                    = {
    "Managed_by" = "Terraform"
    "Name" = "kaiburr-sandbox-private-sn-b"
    "Environment" = "sandbox"
    "Owner" = "kaiburr"
  }
}

module "subnet_subnet-0e643c573c7daeac7" {
 source ="./modules/subnet"
  cidr_block              = "192.168.0.0/19"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-07452964709d9cc87.id
  az                      = "us-east-1a"
  tags                    = {
    "alpha.eksctl.io/eksctl-version" = "0.127.0"
    "alpha.eksctl.io/cluster-name" = "kaiburr-eks"
    "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    "kubernetes.io/role/elb" = "1"
    "Name" = "eksctl-kaiburr-eks-cluster/SubnetPublicUSEAST1A"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "kaiburr-eks"
  }
}

