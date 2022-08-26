# Create 1 iam user in AWS
------------------------

#### versions.tf file:
```
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
# default provider
provider "aws" {
  region  = "us-east-1"
  profile = "default" # shared credential file (authentication) 
}
```


#### iam ceration code:
```
# resource
resource "aws_iam_user" "devuser" {
  name = "user1"

}```
