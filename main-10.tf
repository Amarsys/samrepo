module "subnet_24" {
 source ="./modules/subnet"
}

module "nat_gateway_1" {
 source ="./modules/nat_gateway"
  public_ip = "3.214.221.186"
}

module "nat_gateway_2" {
 source ="./modules/nat_gateway"
  public_ip = "23.21.65.107"
}

