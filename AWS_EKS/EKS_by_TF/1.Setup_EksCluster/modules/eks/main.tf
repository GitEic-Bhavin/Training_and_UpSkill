module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.eks_cluster_name
  kubernetes_version = var.cluster_version

  # Optional
  endpoint_public_access = true

  # Optional: Adds the current caller identity as an administrator via cluster access entry
  enable_cluster_creator_admin_permissions = true

#   compute_config = {
#     # create_node_groups = false
#     enabled    = false
#     node_pools = ["general-purpose"]
#   }

  vpc_id     =  var.vpc_id
  subnet_ids = var.private_subnets

  tags = {
    Name = var.eks_cluster_name
  }

    eks_managed_node_groups = {}
    create_cloudwatch_log_group = false
    self_managed_node_groups = {}
}