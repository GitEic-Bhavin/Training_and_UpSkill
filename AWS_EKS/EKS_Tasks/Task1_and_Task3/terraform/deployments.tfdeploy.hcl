identity_token "aws" {
  audience = ["aws.workload.identity"]
}


##################
# DEV Deployment
##################
deployment "dev" {


  inputs = {

    role_arn       = "arn:aws:iam::075285241029:role/Tf-Stack_OIDC_Role"
    identity_token = identity_token.aws.jwt

    region = "ap-south-1"

    vpc_name = "demo-dev"
    vpc_cidr = "10.10.0.0/16"

    azs             = ["ap-south-1a", "ap-south-1b"]
    public_subnets  = ["10.10.1.0/24", "10.10.2.0/24"]
    private_subnets = ["10.10.3.0/24", "10.10.4.0/24"]

    ami_id        = "ami-xxxxxxxx"
    key_pair_name = "dev-key"

    admin_ip = "0.0.0.0/0"
  }

}

##################
# PROD Deployment
##################
deployment "prod" {


  inputs = {

    role_arn       = "arn:aws:iam::075285241029:role/Tf-Stack_OIDC_Role"
    identity_token = identity_token.aws.jwt

    region = "ap-south-1"

    vpc_name = "demo-prod"
    vpc_cidr = "10.20.0.0/16"

    azs             = ["ap-south-1a", "ap-south-1b"]
    public_subnets  = ["10.20.1.0/24", "10.20.2.0/24"]
    private_subnets = ["10.20.3.0/24", "10.20.4.0/24"]

    ami_id        = "ami-yyyyyyyy"
    key_pair_name = "prod-key"

    admin_ip = "0.0.0.0/0"

  }

}
