variable "region" {
  type = string
}

variable "role_arn" {
  type = string
}
variable "identity_token" {
  description = "Identity token for authentication."
  type        = string
  ephemeral   = true
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

variable "admin_ip" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "key_pair_name" {
  type = string
}