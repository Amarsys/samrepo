module "route_table_association_10" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_22.id
  }
  route_table_id = module.nat_route_table_10.route_table_id
}

module "route_table_association_11" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_15.id
  }
  route_table_id = module.nat_route_table_11.route_table_id
}

module "route_table_association_12" {
 source ="./modules/route_table_association"
  subnet_ids     = {
  subnet_1 = module.subnet_19.id
  }
  route_table_id = module.nat_route_table_12.route_table_id
}

