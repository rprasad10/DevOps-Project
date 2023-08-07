resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = "InternetGateway"
  }
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}
