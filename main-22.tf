module "route_table_association_12" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_1.id
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

module "route_table_association_14" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_10.id
  }
  route_table_id                                      = module.nat_route_table_14.route_table_id
}

