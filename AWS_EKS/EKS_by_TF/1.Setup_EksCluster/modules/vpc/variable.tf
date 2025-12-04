variable "vpc_name" {

}
variable "vpc_cidr" {

}
variable "public_subnets" {
    # type = list(string)
    }
variable "private_subnets" { 
    # type = list(string) 
    }
variable "azs" { 
    # type = list(string) 
    }

variable "public_subnet_tags" {
    # type = map(string)
}

variable "private_subnet_tags" {
  
}

variable "public_route_table_tags" {
  
}

variable "private_route_table_tags" {
  
}

variable "igw_tags" {
  type        = map(string)

}

variable "nat_gateway_tags" {
  type        = map(string)

}

# variable "eip_tags" {         # Doesn't supported by modules
#   type        = map(string)
  
# }

variable "default_route_table_tags" {
  type        = map(string)

}

variable "vpn_gateway_tags" {
  type        = map(string)

}

variable "default_network_acl_tags" {
  type = map(string)
}

variable "default_security_group_tags" {
  type = map(string)
}