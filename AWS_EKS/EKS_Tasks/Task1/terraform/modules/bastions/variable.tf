variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnet" {
  type        = string
  description = "Public subnet ID for bastion"
}

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  type        = string
}

variable "admin_ip" {
  type        = string
  description = "Your public IP in CIDR format"
}
