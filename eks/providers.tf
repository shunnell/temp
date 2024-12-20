provider "aws" {
  region  = "us-east-1"
  profile = "cst-infra-admin"
}

provider "aws" {
  alias   = "network"
  region  = "us-east-1"
  profile = "cst-network-admin"
}

data "aws_caller_identity" "current" {}