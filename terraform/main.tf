provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"  # optional but recommended to pin version

  name                 = "main-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = ["eu-north-1a", "eu-north-1b"]
  public_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name    = "eks-cluster"
  cluster_version = "1.27"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    eks_nodes = {
      min_size       = 1
      max_size       = 2
      desired_size   = 2
      instance_types = ["t3.medium"]
    }
  }
}

resource "aws_ecr_repository" "app" {
  name = var.module_name
}
