variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
}

variable "aws_region" {
  description = "AWS region where the resources will be deployed."
}

variable "aws_access_key" {
  description = "AWS access key."
}

variable "aws_secret_key" {
  description = "AWS secret key."
}

variable "frontend_key_name" {
  description = "SSH key name for frontend instances."
}

variable "backend_key_name" {
  description = "SSH key name for backend instances."
}

variable "database_key_name" {
  description = "SSH key name for database instances."
}
