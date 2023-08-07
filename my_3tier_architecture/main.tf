module "vpc" {
  source = "./modules/vpc"
  # Add variables required by the VPC module
}

module "public_subnet" {
  source = "./modules/subnet"
  # Add variables required by the public subnet module
}

module "private_subnet_1" {
  source = "./modules/subnet"
  # Add variables required by the first private subnet module
}

module "private_subnet_2" {
  source = "./modules/subnet"
  # Add variables required by the second private subnet module
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "nat_gateway" {
  source           = "./modules/nat_gateway"
  public_subnet_id = module.public_subnet.subnet_id
}

module "frontend_application" {
  source              = "./modules/frontend_application"
  subnet_id           = module.public_subnet.subnet_id
  security_group_id   = module.frontend_application_security_group.security_group_id
  key_name            = var.frontend_key_name
}

module "backend_application" {
  source              = "./modules/backend_application"
  subnet_id           = module.private_subnet_1.subnet_id
  security_group_id   = module.backend_application_security_group.security_group_id
  key_name            = var.backend_key_name
}

module "database" {
  source              = "./modules/database"
  subnet_id           = module.private_subnet_2.subnet_id
  security_group_id   = module.database_security_group.security_group_id
  key_name            = var.database_key_name
}
