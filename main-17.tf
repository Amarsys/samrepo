module "route_table_rtb-0fce8d9e5dc67c913" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-089f7e7225591efe2.id
  routes         = [
  {
    "destinationCidrBlock" = "10.211.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "10.0.0.0/8"
    "transitGatewayId" = "tgw-0c24f5d0cffeffa41"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-089f7e7225591efe2"
  }
  ]
  vpc_id         = module.vpc_vpc-093a8f7bc7507621e.id
  tags           = {
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/kops/role" = "private-us-east-2a"
    "Name" = "private-us-east-2a.eks-cgp-prod"
  }
}

module "route_table_rtb-09f238332a6a9b4a6" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-0c2e47b2263db2567.id
  routes         = [
  {
    "destinationCidrBlock" = "10.211.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "10.0.0.0/8"
    "transitGatewayId" = "tgw-0c24f5d0cffeffa41"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-0c2e47b2263db2567"
  }
  ]
  vpc_id         = module.vpc_vpc-093a8f7bc7507621e.id
  tags           = {
    "kubernetes.io/kops/role" = "private-us-east-2c"
    "Name" = "private-us-east-2c.eks-cgp-prod"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
  }
}

