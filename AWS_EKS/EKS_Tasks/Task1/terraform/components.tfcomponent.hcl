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

component "bastions" {
  source = "./modules/bastions"

  providers = {
    aws = provider.aws.this
  }

  inputs = {
    vpc_id        = component.vpc.vpc_id
    public_subnet = component.vpc.public_subnets[0]

    ami_id        = var.ami_id
    key_pair_name = var.key_pair_name

    admin_ip = var.admin_ip
  }
}

component "private_ec2" {
  source = "./modules/ec2"


  providers = {
    aws = provider.aws.this
  }

  inputs = {
    vpc_id         = component.vpc.vpc_id
    private_subnet = component.vpc.private_subnets[0]

    ami_id        = var.ami_id
    key_pair_name = var.key_pair_name
    is_public = false

    bastion_sg_id = component.bastions.bastion_sg_id
  }
}

component "public_ec2" {
  source  = "./modules/ec2"

  providers = {
    aws = provider.aws.this
  }

  inputs = {
    vpc_id    = component.vpc.vpc_id
    public_subnet = component.vpc.public_subnets[0]
    
    

    ami_id        = var.ami_id
    key_pair_name = var.key_pair_name
    is_public     = true
  }
}