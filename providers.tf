# Aliased provider in US East 1, needed for ACM certificate
provider "aws" {
  alias  = "default"
  region = "us-east-1"
  //  assume_role = "${var.workspace_iam_roles[terraform.workspace]}"
}

terraform {
  required_providers {
    aws = {
      version               = "~> 3.59.0"
      source                = "hashicorp/aws"
      configuration_aliases = [aws.default]
    }
  }
}