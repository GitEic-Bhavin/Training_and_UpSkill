module "vpc" {
    source = "./modules/vpc"
    # eks_cluster_name = 
    azs = var.azs
    vpc_cidr = var.vpc_cidr
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets

    vpc_name        = local.vpc_name

    public_route_table_tags = local.public_route_table_tags
    private_route_table_tags = local.private_route_table_tags
    default_route_table_tags = local.default_route_table_tags

    public_subnet_tags = local.public_subnet_tags
    private_subnet_tags = local.private_subnet_tags

    igw_tags = local.igw_tags
    nat_gateway_tags = local.nat_gateway_tags

    default_security_group_tags = local.default_security_group_tags

    default_network_acl_tags = local.default_network_acl_tags

    # eip_tags = local.eip_tags

    vpn_gateway_tags = local.vpn_gateway_tags

}


module "eks" {
    source = "./modules/eks"
    eks_cluster_name = var.eks_cluster_name
    vpc_id = module.vpc.vpc_id

    private_subnets = module.vpc.private_subnets

    cluster_version = var.cluster_version

}
