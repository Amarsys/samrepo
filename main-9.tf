module "route_table_rtb-0ea77514b722cf99c" {
 source ="./modules/route_table"
  routes = [
  {
    "destinationCidrBlock" = "0.0.0.0/0"
    "gatewayId" = "igw-04d860a3cfd672f23"
  }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags   = {
    "Region" = "us-east-1"
    "Environment" = "Dev"
    "Project" = "CGP"
    "Name" = "dev_cgp_public_rt"
  }
}

module "route_table_association_rtb-0f6ca3beb1533a60d" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-05f5e4f214a79b646.id
  }
  route_table_id                                      = module.route_table_rtb-0f6ca3beb1533a60d.route_table_id
}

module "route_table_association_rtb-0be60bded8a0c01bb" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0d815edf215e9a361.id
  }
  route_table_id                                      = module.route_table_rtb-0be60bded8a0c01bb.route_table_id
}

