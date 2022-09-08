# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "AWS RDS Database Admin Username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS Database Admin Password"
  type        = string
  sensitive   = true
}



