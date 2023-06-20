module "route_table_association_rtb-016cb5663d271d23c" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-03385fcee5457b536.id
  }
  route_table_id                                      = module.nat_route_table_rtb-016cb5663d271d23c.route_table_id
}

module "route_table_association_rtb-0d95fc94900a4a175" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-05dd600368666de8e.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0d95fc94900a4a175.route_table_id
}

