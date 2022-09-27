provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario10" {
  name        = "Scenario10"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG with Single port(UDP and TCP) and all IP."
  }
}



