provider "aws" {
  region = "us-east-1"  # Update with your desired AWS region
}

# Include your existing VPC and subnet modules here
module "vpc_vpc-03622508ccabb8719" {
  source               = "./vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc_vpc-040873ce6d24dfd97" {
  source               = "./vpc"
  vpc_cidr             = "10.222.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name"        = "dev_cgp_vpc"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-0644cb7c5481a6d9e" {
  source                  = "./subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1f"
}

module "subnet_subnet-0c91b0a51ebaa32a8" {
  source                  = "./subnet"
  cidr_block              = "10.222.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags = {
    "Name"        = "public_us-east-1c_dev_cgp"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

resource "aws_security_group" "ecs_security_group" {
  name_prefix = "ecs-"
  
  # Define your security group rules here
  # ...
  
  # Add tags to the security group
  tags = {
    Name        = "ECS Security Group"
    Environment = "Dev"
  }
}

# ECS Cluster Module
module "ecs_cluster" {
  source        = "./ecs-cluster"  # Replace with the actual path to your ECS cluster module
  cluster_name  = "my-ecs-cluster"  # Replace with your desired ECS cluster name
  vpc_cidr      = "10.222.0.0/16"# Use the appropriate VPC ID
}
