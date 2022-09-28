provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "Scenario9" {
  name        = "Scenario9"
  description = "egress"
  vpc_id      = "vpc-481b202f"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SG with all port and all IP "
  }
}



