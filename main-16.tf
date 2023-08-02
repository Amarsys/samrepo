module "route_table_rtb-0be60bded8a0c01bb" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-0e41a84966e44b062.id
  routes         = [
  {
    "destinationCidrBlock" = "10.220.0.0/16"
    "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
  },
  {
    "destinationCidrBlock" = "10.222.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-0e41a84966e44b062"
  }
  ]
  vpc_id         = module.vpc_vpc-040873ce6d24dfd97.id
  tags           = {
    "Environment" = "Dev"
    "Project" = "CGP"
    "Name" = "dev_cgp_us-east-1b_private_rt"
    "Region" = "us-east-1"
  }
}

module "route_table_rtb-06c4a26d3327b6ec0" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-01f77ad992a4c0171.id
  routes         = [
  {
    "destinationCidrBlock" = "10.220.0.0/16"
    "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
  },
  {
    "destinationCidrBlock" = "10.222.0.0/16"
    "gatewayId" = "local"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-01f77ad992a4c0171"
  }
  ]
  vpc_id         = module.vpc_vpc-040873ce6d24dfd97.id
  tags           = {
    "Name" = "dev_cgp_us-east-1a_private_rt"
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Project" = "CGP"
  }
}

module "route_table_rtb-0d6c90029a4fbe89c" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-009a3b090e7e1b2e4.id
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
    "natGatewayId" = "nat-009a3b090e7e1b2e4"
  }
  ]
  vpc_id         = module.vpc_vpc-093a8f7bc7507621e.id
  tags           = {
    "Name" = "private-us-east-2b.eks-cgp-prod"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "kubernetes.io/kops/role" = "private-us-east-2b"
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
  }
}

