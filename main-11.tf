module "subnet_subnet-04aa0e1275bceb3c2" {
 source ="./modules/subnet"
  cidr_block              = "10.211.36.0/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags                    = {
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "SubnetType" = "Utility"
    "Name" = "us-east-2a-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb" = "1"
    "AssociatedNatgateway" = "nat-089f7e7225591efe2"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
  }
}

module "subnet_subnet-0790bd49408a2a74a" {
 source ="./modules/subnet"
  cidr_block              = "10.211.40.0/26"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2a"
  tags                    = {
    "kubernetes.io/role/elb" = "1"
    "type" = "eks"
    "Name" = "us-east-2a-eks-cgp-prod-public"
    "kubernetes.io/cluster/cgp-prod" = "shared"
  }
}

module "subnet_subnet-0a2b5dda4cdee923f" {
 source ="./modules/subnet"
  cidr_block              = "10.211.36.32/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags                    = {
    "Name" = "us-east-2c-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb" = "1"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "AssociatedNatgateway" = "nat-0c2e47b2263db2567"
    "SubnetType" = "Utility"
  }
}

