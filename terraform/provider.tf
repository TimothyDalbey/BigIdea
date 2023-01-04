terraform {
  required_version = "= 1.3.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket               = "tmd-big-idea-terraform"
    workspace_key_prefix = "big-idea"
    key                  = "fe.tfstatte"
    region               = "us-west-2"
  }

}

provider "aws" {
  region = "us-west-2"
}
