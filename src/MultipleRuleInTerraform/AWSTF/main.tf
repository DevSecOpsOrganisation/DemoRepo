provider "aws" {
  region     = var.region
}

resource "aws_security_group" "Scenario111" {
  name        = "SG multiple rules"
  description = "SG with multiple rules."
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = var.all_protocol
    cidr_blocks = var.all_ips
  }
  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = var.tcp_protocol
    cidr_blocks = var.all_ips
  }

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = var.udp_protocol
    cidr_blocks = var.all_ips
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = var.tcp_protocol
    cidr_blocks = var.all_ips
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = var.udp_protocol
    cidr_blocks = var.private_ip
  }

  tags = {
    Name = "Scenario111"
  }
}



