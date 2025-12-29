variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "vpc_name" {
  type = string
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to use"
}

variable "key_pair_name" {
  type        = string
  description = "EC2 key pair name"
}

# variable "admin_ip" {
#   type = string
# }

variable "admin_ip" {
  type = string
  # default = null
}

# variable "enable_bastion" {
#   type = bool
#   default = false
# }

# variable "enable_public_ec2" {
#   type = bool
#   default = false
# }

# variable "enable_private_ec2" {
#   type = bool
#   default = false
# }

# variable "region" {
#   type = string
# }
variable "role_arn" {
  type = string
}

variable "identity_token" {
  description = "Identity token for authentication."
  type        = string
  ephemeral   = true
}