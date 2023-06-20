module "route_table_association_rtb-0dbea13d546f4ede6" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-07e509d5bbeb86ee3.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0dbea13d546f4ede6.route_table_id
}

module "route_table_association_rtb-05cc63256aba18e9b" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-08e5d4685fea3bd4b.id
  }
  route_table_id                                      = module.nat_route_table_rtb-05cc63256aba18e9b.route_table_id
}

module "route_table_association_rtb-0b7b8113a22090948" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-08bd3ebf13e6078b3.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0b7b8113a22090948.route_table_id
}

