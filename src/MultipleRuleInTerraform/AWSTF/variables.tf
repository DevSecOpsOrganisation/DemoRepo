variable "allowed_ips" {
  description = "Defines ip CIDR blocks for Security groups"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}