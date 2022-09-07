# Terraform Block
terraform {
  required_version = "~>1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.20.0"
  }
  }
}

# Provider block
# Provider 1 (default provider)
provider "aws" {
    region = "us-east-1"
    profile = "default"  # shared credential file (authentication) 
}