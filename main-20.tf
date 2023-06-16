module "route_table_association_14" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_3.id
  }
  route_table_id                                      = module.nat_route_table_14.route_table_id
}

module "route_table_association_17" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_10.id
  }
  route_table_id                                      = module.nat_route_table_17.route_table_id
}

