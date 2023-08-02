module "subnet_subnet-08826711deab4dd2b" {
 source ="./modules/subnet"
  cidr_block              = "10.211.28.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags                    = {
    "Name" = "us-east-2b-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "kubernetes.io/role/internal-elb" = "1"
    "SubnetType" = "Private"
  }
}

module "subnet_subnet-03039b1456ea05ec2" {
 source ="./modules/subnet"
  cidr_block              = "10.211.0.16/28"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2b"
  tags                    = {
    "Name" = "us-east-2b.k8s.prod.db"
    "type" = "db"
  }
}

module "subnet_subnet-068258798beb2d770" {
 source ="./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-0ac25cb2afd684bcb.id
  az                      = "us-east-2c"
}

