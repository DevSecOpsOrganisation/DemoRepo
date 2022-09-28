provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario12" {
  name        = "Scenario12"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.1/32"]
  }

  egress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = ["192.168.1.1/32"]
  }
  tags = {
    Name = "SG with Single port(UDP and TCP) and single IP"
  }
}
