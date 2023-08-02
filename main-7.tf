module "subnet_subnet-0c5b94f8ad4a0e37f" {
 source ="./modules/subnet"
  cidr_block              = "10.211.40.64/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags                    = {
    "Name" = "us-east-2b-eks-cgp-prod-public"
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "kubernetes.io/role/elb" = "1"
    "type" = "eks"
  }
}

module "subnet_subnet-0379e627f06b1fb8e" {
 source ="./modules/subnet"
  cidr_block              = "10.211.24.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags                    = {
    "Name" = "us-east-2a-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/internal-elb" = "1"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "SubnetType" = "Private"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "kubernetes.io/cluster/cgp-prod" = "shared"
  }
}

module "subnet_subnet-08b9315c38cbe0d1f" {
 source ="./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2a"
}

