provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario111" {
  name        = "SG multiple rules"
  description = "SG with multiple rules"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.allowed_ips
  }
  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "udp"
    cidr_blocks = var.allowed_ips
  }

  tags = {
    Name = "Scenario111"
  }
}



