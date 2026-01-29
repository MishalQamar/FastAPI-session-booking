# VPC: shared network resources. Remote state on Terraform Cloud (GitHub has no
# built-in state like GitLab's http backend; Terraform Cloud is the equivalent).
terraform {
  required_version = ">= 1.5.0"

  # Organization and workspace must exist in Terraform Cloud (app.terraform.io).
  # Create org in: Organization settings → Create organization. Create workspace in: New workspace → CLI-driven.
  cloud {
    organization = "mishalqamar"  # Must match your Terraform Cloud org name exactly
    workspaces {
      name = "vpc-global"         # Create this workspace in the org (CLI-driven)
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 6.0"
    }
  }
}
