module "route_table_association_8" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_2.id
  }
  route_table_id                                      = module.nat_route_table_8.route_table_id
}

module "route_table_association_10" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_20.id
  }
  route_table_id                                      = module.nat_route_table_10.route_table_id
}

module "route_table_association_11" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_21.id
  }
  route_table_id                                      = module.nat_route_table_11.route_table_id
}

