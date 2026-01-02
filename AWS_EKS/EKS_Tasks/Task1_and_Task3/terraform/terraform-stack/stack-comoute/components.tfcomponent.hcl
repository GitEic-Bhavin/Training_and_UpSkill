component "ec2" {
  source = "./modules/ec2"

  inputs = {
    vpc_id         = linked_stack_output.network.vpc_id
    public_subnets = linked_stack_output.network.public_subnets
  }
}

component "bastions" {
  source = "./modules/bastions"

  inputs = {
    vpc_id         = linked_stack_output.network.vpc_id
    public_subnets = linked_stack_output.network.public_subnets
  }
}
