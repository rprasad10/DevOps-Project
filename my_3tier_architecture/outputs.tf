output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.public_subnet.subnet_id
}

output "private_subnet_1_id" {
  value = module.private_subnet_1.subnet_id
}

output "private_subnet_2_id" {
  value = module.private_subnet_2.subnet_id
}
