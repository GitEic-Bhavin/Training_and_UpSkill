module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    # Terraform = "true"
    Name = var.vpc_name
  }

  public_subnet_tags = var.public_subnet_tags
  private_subnet_tags = var.private_subnet_tags

  public_route_table_tags = var.public_route_table_tags
  private_route_table_tags = var.private_route_table_tags

  nat_gateway_tags = var.nat_gateway_tags
  igw_tags = var.igw_tags

  # eip_tags = var.eip_tags # Doesn't supported by module.

  default_network_acl_tags = var.default_network_acl_tags

  default_route_table_tags = var.default_route_table_tags

  default_security_group_tags = var.default_security_group_tags
  
  vpn_gateway_tags = var.vpn_gateway_tags
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}