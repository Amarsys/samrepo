module "subnet_subnet-0fff9638667c0c847" {
 source ="./modules/subnet"
  cidr_block              = "10.211.32.0/22"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-093a8f7bc7507621e.id
  az                      = "us-east-2c"
  tags                    = {
    "Name" = "us-east-2c-dp-cluster001.cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/cgp-prod" = "shared"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "shared"
    "SubnetType" = "Private"
  }
}

module "nat_gateway_nat-01b8ab26778951cf4" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0c91b0a51ebaa32a8.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1c_nat_gw"
  }
}

module "nat_gateway_nat-01f77ad992a4c0171" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0e4ecbe4a83269b14.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1a_nat_gw"
  }
}

