provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAXN5RHA6VRMJWNLMR"
  secret_key = "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"
}

resource "aws_security_group" "Scenario3" {
  name        = "SG with port range(UDP and TCP) and all IP."
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 3020
    to_port     = 3050
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3020
    to_port     = 3050
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Scenario3"
  }
}



