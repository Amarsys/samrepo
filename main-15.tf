module "internet_gateway_igw-01e552d5b9e0f452d" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-0ac25cb2afd684bcb.id
}

module "internet_gateway_igw-0f58768ebd04c56e7" {
 source ="./modules/internet_gateway"
  vpc_id = module.vpc_vpc-093a8f7bc7507621e.id
  tags   = {
    "Name" = "k8s.prod-gw"
  }
}

module "route_table_rtb-0f6ca3beb1533a60d" {
 source ="./modules/route_table"
  nat_gateway_id = module.nat_gateway_nat-01b8ab26778951cf4.id
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
    "natGatewayId" = "nat-01b8ab26778951cf4"
  }
  ]
  vpc_id         = module.vpc_vpc-040873ce6d24dfd97.id
  tags           = {
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Name" = "dev_cgp_us-east-1c_private_rt"
    "Project" = "CGP"
  }
}

