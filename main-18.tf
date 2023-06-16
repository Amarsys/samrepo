module "route_table_association_8" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_17.id
  }
  route_table_id                                      = module.nat_route_table_8.route_table_id
}

module "route_table_association_9" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_1.id
  }
  route_table_id                                      = module.nat_route_table_9.route_table_id
}

module "route_table_association_10" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_12.id
  }
  route_table_id                                      = module.nat_route_table_10.route_table_id
}

