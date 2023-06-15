module "nat_gateway_3" {
 source ="./modules/nat_gateway"
  public_ip = "54.146.204.41"
}

module "internet_gateway_1" {
 source ="./modules/internet_gateway"
}

module "internet_gateway_2" {
 source ="./modules/internet_gateway"
}

