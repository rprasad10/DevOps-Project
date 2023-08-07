resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "MyVPC"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}
