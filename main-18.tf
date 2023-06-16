module "route_table_association_2" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_2.id
  subnet_2 = module.subnet_22.id
  subnet_3 = module.subnet_5.id
  }
}

module "route_table_association_3" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_6.id
  subnet_2 = module.subnet_11.id
  subnet_3 = module.subnet_16.id
  }
}

module "route_table_association_4" {
 source ="./modules/route_table_association"
}

