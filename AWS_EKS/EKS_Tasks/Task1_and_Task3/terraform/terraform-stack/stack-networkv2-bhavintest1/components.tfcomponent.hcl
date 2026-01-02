output "vpc_id" {
  description = "The VPC ID of the networking Stack"
  type        = string
  value       = component.vpc.vpc_id
}


component "vpc" {
  source = "./modules/vpc"

  providers = {
    aws = provider.aws.this
  }


  inputs = {
    vpc_name        = var.vpc_name
    vpc_cidr        = var.vpc_cidr
    azs             = var.azs
    public_subnets  = var.public_subnets
    private_subnets = var.private_subnets
  }
}