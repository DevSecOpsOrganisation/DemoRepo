provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario14" {
  name        = "Scenario14"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 50
    to_port     = 60
    protocol    = "tcp"
    cidr_blocks = [
      "192.168.1.1/32",
      "192.168.1.2/32",
      "192.168.1.3/32",
      "192.168.0.0/16"
    ]
  }
  egress {
    from_port   = 50
    to_port     = 60
    protocol    = "udp"
    cidr_blocks = [
      "192.168.1.1/32",
      "192.168.1.2/32",
      "192.168.1.3/32",
      "192.168.0.0/16"
    ]
  }
  tags = {
    Name = "SG with port range(UDP and TCP) and all Multiple IP"
  }
}
