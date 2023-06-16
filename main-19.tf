module "route_table_association_11" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_7.id
  }
  route_table_id                                      = module.nat_route_table_11.route_table_id
}

module "route_table_association_12" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_24.id
  }
  route_table_id                                      = module.nat_route_table_12.route_table_id
}

module "route_table_association_13" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_15.id
  }
  route_table_id                                      = module.nat_route_table_13.route_table_id
}

