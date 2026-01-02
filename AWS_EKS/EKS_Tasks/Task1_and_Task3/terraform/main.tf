# data "http" "my_ip" {
#   url = "https://ipv4.icanhazip.com"
# }


# module "vpc" {
#   source = "./modules/vpc"

#   vpc_name        = var.vpc_name
#   vpc_cidr        = "10.0.0.0/16"
#   azs             = var.azs
#   private_subnets = var.private_subnets
#   public_subnets  = var.public_subnets
# }

# module "bastions" {
#   source = "./modules/bastions"

#   vpc_id        = module.vpc.vpc_id
#   public_subnet = module.vpc.public_subnets[0]

#   ami_id        = var.ami_id
#   key_pair_name = var.key_pair_name
#   admin_ip = "${chomp(data.http.my_ip.response_body)}/32"

# }

# module "ec2" {
#   source = "./modules/ec2"

#   vpc_id         = module.vpc.vpc_id
#   private_subnet = module.vpc.private_subnets[0]

#   ami_id        = var.ami_id
#   key_pair_name = var.key_pair_name
#   bastion_sg_id = module.bastions.bastion_sg_id
# }
