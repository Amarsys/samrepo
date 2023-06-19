module "route_table_association_15" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_28.id
  }
  route_table_id                                      = module.nat_route_table_15.route_table_id
}

module "route_table_association_16" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_18.id
  }
  route_table_id                                      = module.nat_route_table_16.route_table_id
}

module "route_table_association_17" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_5.id
  }
  route_table_id                                      = module.nat_route_table_17.route_table_id
}

