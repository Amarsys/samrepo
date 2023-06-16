module "route_table_association_5" {
 source ="./modules/route_table_association"
}

module "route_table_association_6" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_8.id
  }
  route_table_id                                      = module.nat_route_table_6.route_table_id
}

module "route_table_association_7" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_20.id
  subnet_2 = module.subnet_4.id
  subnet_3 = module.subnet_14.id
  }
}

