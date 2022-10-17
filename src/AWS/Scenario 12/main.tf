provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario12" {
  name        = "Scenario12"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
    cidr_blocks = ["172.16.0.0/16"]
  }

  egress {
    from_port   = 25
    to_port     = 25
    protocol    = "udp"
    cidr_blocks = ["172.16.0.0/16"]
  }
  tags = {
    Name = "SG with Single port(UDP and TCP) and single IP"
  }
}
