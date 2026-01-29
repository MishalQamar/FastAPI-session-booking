# VPC: shared network resources. Remote state on Terraform Cloud (GitHub has no
# built-in state like GitLab's http backend; Terraform Cloud is the equivalent).
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
