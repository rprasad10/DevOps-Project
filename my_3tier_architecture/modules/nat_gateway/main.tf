resource "aws_eip" "nat_eip" {
  vpc = true

  tags = {
    Name = "NATGatewayEIP"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "NATGateway"
  }
}

output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}
