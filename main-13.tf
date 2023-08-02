module "nat_gateway_nat-0e41a84966e44b062" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0d2fa7f51fa90f14e.id
  tags            = {
    "Project" = "CGP"
    "Environment" = "Dev"
    "Region" = "us-east-1"
    "Name" = "dev_cgp_us-east_1b_nat_gw"
  }
}

module "nat_gateway_nat-089f7e7225591efe2" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-04aa0e1275bceb3c2.id
  tags            = {
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name" = "us-east-2a.eks-cgp-prod"
  }
}

module "nat_gateway_nat-009a3b090e7e1b2e4" {
 source ="./modules/nat_gateway"
  subnet_id       = module.subnet_subnet-0ee9bbd043ee90178.id
  tags            = {
    "KubernetesCluster" = "cluster001.k8s.prod.brightloom.com"
    "kubernetes.io/cluster/cluster001.k8s.prod.brightloom.com" = "owned"
    "Name" = "us-east-2b.eks-cgp-prod"
  }
}

