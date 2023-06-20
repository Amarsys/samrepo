module "route_table_association_rtb-0f402c5143c95eb75" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0777c89717e03b99a.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0f402c5143c95eb75.route_table_id
}

module "route_table_association_rtb-0cb0487bb3d371e31" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0f6c1a37a7c2ae9ba.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0cb0487bb3d371e31.route_table_id
}

module "route_table_association_rtb-0702e297b53c755c2" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0820a8571cea612b4.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0702e297b53c755c2.route_table_id
}

