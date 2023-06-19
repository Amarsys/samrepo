module "route_table_association_20" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_13.id
  }
  route_table_id                                      = module.nat_route_table_20.route_table_id
}

