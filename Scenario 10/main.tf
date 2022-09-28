provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario10" {
  name        = "Scenario10"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
    cidr_blocks = ["7.7.0.0/16"]
  }

  egress {
    from_port   = 25
    to_port     = 25
    protocol    = "udp"
    cidr_blocks = ["7.7.0.0/16"]
  }
  tags = {
    Name = "SG with Single port(UDP and TCP) and all IP."
  }
}



