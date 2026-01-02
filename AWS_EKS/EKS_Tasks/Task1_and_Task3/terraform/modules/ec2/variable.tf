variable "vpc_id" {
  type = string
}

variable "private_subnet" {
  type = string
  default = null
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_pair_name" {
  type = string
}

variable "bastion_sg_id" {
  type = string
  default = null
}

variable "is_public" {
  type = bool
  default = false
}