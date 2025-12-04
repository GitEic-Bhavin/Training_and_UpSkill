locals {
  vpc_name = "${var.eks_cluster_name}-vpc"

  public_subnet_tags = {
    Name = "${var.eks_cluster_name}-public-subnet"
  }

  private_subnet_tags = {
    Name = "${var.eks_cluster_name}-private-subnet"
  }

  public_route_table_tags = {
    Name = "${var.eks_cluster_name}-public-rt"
  }

  private_route_table_tags = {
    Name = "${var.eks_cluster_name}-private-rt"
  }

  # eip_tags = {
  #   Name = "${var.eks_cluster_name}-eip"
  # }

  nat_gateway_tags = {
    Name = "${var.eks_cluster_name}-nat"
  }

  igw_tags = {
    Name = "${var.eks_cluster_name}-igw"
  }


  default_network_acl_tags = {
    Name = "${var.eks_cluster_name}-default-nacl"
  }

  default_route_table_tags = {
    Name = "${var.eks_cluster_name}-default-rt"
  }

  default_security_group_tags = {
    Name = "${var.eks_cluster_name}-default-sg"
  }

  vpn_gateway_tags = {
    Name = "${var.eks_cluster_name}-vpn-gateway"
  }
}