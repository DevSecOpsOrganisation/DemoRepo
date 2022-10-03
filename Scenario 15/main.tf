provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario15" {
  name        = "Scenario15"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = -1
    to_port     = -1
    protocol    = "ICMP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG with Rule with ICMP protocol"
  }
}
