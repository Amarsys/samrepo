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

