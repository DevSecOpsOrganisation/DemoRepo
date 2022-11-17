provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario111" {
  name        = "SG multiple rules"
  description = "SG with multiple rules"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = var.tcp_protocol
    cidr_blocks = var.allowed_ips
  }
  ingress {
    from_port   = 400
    to_port     = 400
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  ingress {
    from_port   = 400
    to_port     = 400
    protocol    = var.udp_protocol
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 1
    protocol    = var.tcp_protocol
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 1
    protocol    = var.udp_protocol
    cidr_blocks = var.allowed_ips
  }

  tags = {
    Name = "Scenario111"
  }
}



