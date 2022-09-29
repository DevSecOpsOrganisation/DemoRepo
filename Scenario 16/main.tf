provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario16" {
  name        = "Scenario16"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["sg-5728062a"]

  }
  tags = {
    Name = "SG with Rule with SG in source "
  }
}
