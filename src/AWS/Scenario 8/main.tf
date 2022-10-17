provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario8" {
  name        = "SG with Rule with SG in source"
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["sg-5728062a"]

  }

  tags = {
    Name = "Scenario8"
  }
}




