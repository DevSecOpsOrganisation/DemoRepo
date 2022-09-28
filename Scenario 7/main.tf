provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario7" {
  name        = "SG with Rule with ICMP protocol"
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "ICMP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Scenario7"
  }
}




