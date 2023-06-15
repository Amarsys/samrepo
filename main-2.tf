module "vpc_4" {
 source ="./modules/vpc"
}

module "subnet_1" {
 source ="./modules/subnet"
}

module "subnet_2" {
 source ="./modules/subnet"
}

