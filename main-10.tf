module "route_table_association_rtb-06c4a26d3327b6ec0" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0182aa467d8e9fdc4.id
  }
  route_table_id                                      = module.route_table_rtb-06c4a26d3327b6ec0.route_table_id
}

module "route_table_association_rtb-0ea77514b722cf99c" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0d2fa7f51fa90f14e.id
  subnet_2 = module.subnet_subnet-0e4ecbe4a83269b14.id
  subnet_3 = module.subnet_subnet-0c91b0a51ebaa32a8.id
  }
  route_table_id                                      = module.route_table_rtb-0ea77514b722cf99c.route_table_id
}

