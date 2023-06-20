module "route_table_association_rtb-0601a2d557c2adf8c" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-0155ddbcf6d005cda.id
  }
  route_table_id                                      = module.nat_route_table_rtb-0601a2d557c2adf8c.route_table_id
}

module "route_table_association_rtb-01403800ddff03862" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-01c47000df369b6fb.id
  }
  route_table_id                                      = module.nat_route_table_rtb-01403800ddff03862.route_table_id
}

module "route_table_association_rtb-016cb5663d271d23c" {
 source ="./modules/route_table_association"
  subnet_ids                                          = {
  subnet_1 = module.subnet_subnet-03385fcee5457b536.id
  }
  route_table_id                                      = module.nat_route_table_rtb-016cb5663d271d23c.route_table_id
}

