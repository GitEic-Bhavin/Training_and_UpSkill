variable "vpc_cidr" {
  
}

variable "azs" {
  
}

variable "vpc_name" {
  
}

variable "eks_cluster_name" {
  
}

variable "region" {
  
}

variable "cluster_version" {

}

variable "public_subnets" {
    type = list(string)
}

variable "private_subnets" {
    type = list(string)
}

variable "vpn_gateway_tags" {
    type = map(string)
}

variable "igw_tags" {
    type = map(string)
}

variable "public_route_table_tags" {
  
}

variable "private_route_table_tags" {
  
}

variable "nat_gateway_tags" {
  
}

# variable "eip_tags" {
  
# }

variable "default_network_acl_tags" {
  
}

variable "default_security_group_tags" {
  
}

variable "default_route_table_tags" {
  
}

