provider "aws" {
  region = var.region
}

resource "aws_security_group" "Scenario8" {
  name        = "SG without risk"
  description = "Ingress"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 0
    to_port     = 65535
    protocol    = "ICMP"
    cidr_blocks = var.private_ip
  }

  tags = {
    Name = "Scenario8"
  }
}
