variable "vpc_id" {
  description = "ID of the VPC."
}

variable "backend_subnet_cidr_block" {
  description = "CIDR block of the backend subnet."
}

variable "key_name" {
  description = "SSH key name for database instances."
}
