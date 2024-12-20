module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "~> 3.19"
  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = var.availability_zones
  public_subnets  = var.public_subnets
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 3
      min_size         = 2
      max_size         = 6

      instance_type = var.instance_type
      disk_size     = var.node_disk_size

      additional_tags = {
        Name = "eks-cluster-node"
      }
    }
  }
}
