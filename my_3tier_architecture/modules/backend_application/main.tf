resource "aws_security_group" "backend_sg" {
  name_prefix = "backend-"
  vpc_id      = var.vpc_id

  # Inbound rule: Allow SSH from frontend subnet CIDR block
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.frontend_subnet_cidr_block]
  }

  # Outbound rule: Allow all traffic
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

output "security_group_id" {
  value = aws_security_group.backend_sg.id
}
