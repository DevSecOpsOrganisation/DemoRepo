provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario1" {
  name        = "SG with all port and all IP."
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Scenario1"
  }
}



