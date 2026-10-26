# Testing GitHub PR workflow for backend-network
terraform {
  required_version = ">= 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }
}

#organization
terraform {
  cloud {
    organization = "hsu-hcp-terraform-lab"

    workspaces {
      name = "frontend-network"
    }
  }
}
