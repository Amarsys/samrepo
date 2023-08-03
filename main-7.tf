module "internet_gateway_igw-0c9701fee0c8f47a8" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

module "route_table_rtb-0f6ca3beb1533a60d" {
 source ="./modules/route_table"
  routes = [
  {
    "destinationCidrBlock" = "10.220.0.0/16"
    "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-01b8ab26778951cf4"
  }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags   = {
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Name" = "dev_cgp_us-east-1c_private_rt"
    "Project" = "CGP"
  }
}

module "route_table_rtb-0be60bded8a0c01bb" {
 source ="./modules/route_table"
  routes = [
  {
    "destinationCidrBlock" = "10.220.0.0/16"
    "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-0e41a84966e44b062"
  }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags   = {
    "Environment" = "Dev"
    "Project" = "CGP"
    "Name" = "dev_cgp_us-east-1b_private_rt"
    "Region" = "us-east-1"
  }
}

