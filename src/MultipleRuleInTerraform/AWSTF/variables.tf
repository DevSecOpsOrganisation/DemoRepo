variable "allowed_ips" {
  description = "Defines ip CIDR blocks for Security groups"
  type        = list(string)
  default     = ["0.0.0.0/0"]
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