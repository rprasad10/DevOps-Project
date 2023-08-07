resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "Subnet ${count.index + 1}"
  }
}

output "subnet_id" {
  value = aws_subnet.main[*].id
}
