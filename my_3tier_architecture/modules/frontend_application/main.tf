resource "aws_security_group" "frontend_sg" {
  name_prefix = "frontend-"
  vpc_id      = var.vpc_id

  # Inbound rule: Allow HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound rule: Allow SSH from your IP address (adjust the CIDR block)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["Your_Public_IP/32"]
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
  value = aws_security_group.frontend_sg.id
}
