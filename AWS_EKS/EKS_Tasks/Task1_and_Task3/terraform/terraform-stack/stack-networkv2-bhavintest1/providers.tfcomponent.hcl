required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.14.1"
  }
  tls = {
    source  = "hashicorp/tls"
    version = "~> 4.1.0"
  }
  http = {
    source  = "hashicorp/http"
    version = "~> 3.4.0"
  }
}


provider "aws" "this" {

  config {
    region = var.region

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.identity_token
    }

  }
}

provider "tls" "this" {}
provider "http" "this" {}
