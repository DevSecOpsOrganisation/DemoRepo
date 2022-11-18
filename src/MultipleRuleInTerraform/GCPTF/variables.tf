variable "all_ips" {
  description = "CIDR block for all Ip"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "private_ip" {
  description = "CIDR block for a private IP"
  type        = list(string)
  default     = ["192.168.10.10/32"]
}
variable "all_protocol" {
  description = "String value used for all protocol"
  default     = "*"
}

variable "tcp_protocol" {
  description = "String value used for tcp protocol"
  default     = "tcp"
}

variable "udp_protocol" {
  description = "String value used for udp protocol"
  default     = "udp"
}