provider "aws" {
  region = var.region
}

resource "aws_security_group" "Scenario8" {
  name        = "SG without risk"
  description = "Ingress"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 32
    to_port     = 33
    protocol    = var.all_protocol
    cidr_blocks = var.all_ips

  }

  tags = {
    Name = "Scenario8"
  }
}
