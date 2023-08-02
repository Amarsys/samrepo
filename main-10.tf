module "subnet_subnet-0ee9bbd043ee90178" {
 source ="./modules/subnet"
  cidr_block              = "10.211.36.16/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags                    = {
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "AssociatedNatgateway" = "nat-009a3b090e7e1b2e4"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name" = "us-east-2b-public-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/elb" = "1"
    "SubnetType" = "Utility"
  }
}

module "subnet_subnet-04080f8eb69e495ea" {
 source ="./modules/subnet"
  cidr_block              = "10.211.0.32/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags                    = {
    "type" = "db"
    "Name" = "us-east-2c.k8s.prod.db"
  }
}

module "subnet_subnet-08a76bd3b313c7ca9" {
 source ="./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2b"
}

