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

# Add AddOns
 addons = {
    coredns                = {}
    eks-pod-identity-agent = { before_compute = true }
    kube-proxy             = {}
    vpc-cni                = { before_compute = true }
  }

# Add Node groups

 eks_managed_node_groups = {
    private_nodegroup = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = var.eks_instance_type
      min_size       = var.pvt_ng_min
      max_size       = var.pvt_ng_max
      desired_size   = var.pvt_ng_desired
      tags = {
        Name = var.eks_private_nodegroup_name
      }
    }
 }

########

  tags = {
    Name = var.eks_cluster_name
  }

    # eks_managed_node_groups = {}
    create_cloudwatch_log_group = false
    self_managed_node_groups = {}
}