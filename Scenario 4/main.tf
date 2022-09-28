provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario4" {
  name        = "SG with Single port(UDP and TCP) and single IP"
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.1/32"]
  }

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = ["192.168.1.1/32"]
  }

  tags = {
    Name = "Scenario4"
  }
}



