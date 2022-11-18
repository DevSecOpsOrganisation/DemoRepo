variable "vpc_id" {
  description = "Default vpc id used to create Security group"
  default     = "vpc-481b202f"
}

variable "all_protocol" {
  description = "String value used for all protocol"
  default     = "*"
}

variable "tcp_protocol" {
  description = "String value used for tcp protocol"
  default     = "Tcp"
}

variable "udp_protocol" {
  description = "String value used for udp protocol"
  default     = "Udp"
}