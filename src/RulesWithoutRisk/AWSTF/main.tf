provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario8" {
  name        = "SG without risk"
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    description = "SSH"
    from_port   = 32
    to_port     = 33
    protocol    = "tcp"
    cidr_blocks = ["1.1.1.1/32"]

  }

  tags = {
    Name = "Scenario8"
  }
}