module "route_table_association_13" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_2.id
  }
  route_table_id                                      = module.nat_route_table_13.route_table_id
}

module "route_table_association_14" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_8.id
  }
  route_table_id                                      = module.nat_route_table_14.route_table_id
}

module "route_table_association_16" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_20.id
  }
  route_table_id                                      = module.nat_route_table_16.route_table_id
}

