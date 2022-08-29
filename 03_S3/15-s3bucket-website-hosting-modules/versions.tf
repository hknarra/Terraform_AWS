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

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Note:  AWS Credentials Profile (profile = "default") configured on local desktop terminal  
# check this is in terminal: $HOME/.aws/credentials
