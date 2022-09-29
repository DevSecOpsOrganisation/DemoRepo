provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario13" {
  name        = "Scenario13"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = -1
    to_port     = -1
    protocol    = "tcp"
    cidr_blocks = [
      "192.168.1.1/32",
      "192.168.1.2/32",
      "192.168.1.3/32",
      "4.4.4.0/24"
    ]
  }
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "udp"
    cidr_blocks = [
      "192.168.1.1/32",
      "192.168.1.2/32",
      "192.168.1.3/32",
      "4.4.4.0/24"
    ]
  }
  tags = {
    Name = "SG with Single port(UDP and TCP) and Multiple IP"
  }
}
