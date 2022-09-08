# Terraform Block
terraform {
  required_version = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default" # shared credential file (authentication) 
}
# Note: AWS Credentials Profile(profile = "default") configured in local desktop terminal
# $HOME/.aws/credentials

