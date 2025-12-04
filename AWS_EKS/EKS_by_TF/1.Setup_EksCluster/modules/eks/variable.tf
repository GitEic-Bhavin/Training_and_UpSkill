variable "eks_cluster_name" {
  
}
variable "vpc_id" {
  
}

variable "private_subnets" {
    type = list(string)
}

variable "cluster_version" {
  
}


# AddOns

variable "eks_instance_type" {
  type = list(string)
}
variable "eks_private_nodegroup_name" {
    type = string
}

variable "pvt_ng_min" {
    type = number
}

variable "pvt_ng_max" {
    type = number
}   

variable "pvt_ng_desired" {
    type = number
}