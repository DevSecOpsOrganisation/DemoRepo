variable "all_ips" {
  description = "CIDR block for all Ip"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "region" {
  description = "region used while creating SG"
  default     = "us-west-1"
}

variable "private_ip" {
  description = "CIDR block for a private IP"
  type        = list(string)
  default     = ["1.1.1.2/32"]
}
variable "vpc_id" {
  description = "Default vpc id used to create Security group"
  default     = "vpc-481b202f"
}

variable "all_protocol" {
  description = "String value used for all protocol"
  default     = "-1"
}

variable "tcp_protocol" {
  description = "String value used for tcp protocol"
  default     = "tcp"
}

variable "udp_protocol" {
  description = "String value used for udp protocol"
  default     = "udp"
}