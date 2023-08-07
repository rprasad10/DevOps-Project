variable "vpc_id" {
  description = "ID of the VPC."
}

variable "frontend_subnet_cidr_block" {
  description = "CIDR block of the frontend subnet."
}

variable "key_name" {
  description = "SSH key name for backend instances."
}
