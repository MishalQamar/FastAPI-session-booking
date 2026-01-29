terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "mishalqamar"

    workspaces {
      name = "vpc-global"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 6.0"
    }
  }
}
