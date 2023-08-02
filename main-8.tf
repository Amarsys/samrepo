module "route_table_rtb-0e5fcbe7ecd2ca2a7" {
 source ="./modules/route_table"
  routes = [
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "gatewayId" = "igw-0c9701fee0c8f47a8"
  }
  ]
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

module "route_table_rtb-06c4a26d3327b6ec0" {
 source ="./modules/route_table"
  routes = [
  {
    "destinationCidrBlock" = "10.220.0.0/16"
    "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
  },
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "natGatewayId" = "nat-01f77ad992a4c0171"
  }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags   = {
    "Name" = "dev_cgp_us-east-1a_private_rt"
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Project" = "CGP"
  }
}

module "route_table_rtb-0e48de685c3c4ac83" {
 source ="./modules/route_table"
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
}

