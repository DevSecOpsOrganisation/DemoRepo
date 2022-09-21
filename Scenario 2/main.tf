provider "aws" {

  access_key = "AKIAXN5RHA6VRMJWNLMR"
  secret_key = "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"
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario2" {
  name        = "SG with Single port and all IP."
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Scenario2"
  }
}



