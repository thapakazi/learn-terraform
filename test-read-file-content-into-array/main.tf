locals {
  ip_in_array =  compact(split("\n", file("ips.txt")))
  ip_in_array_vars =  compact(split("\n", var.IP_LIST))
}

variable "IP_LIST" {
  default = ""
  type = string
}

output "ip_array" {
  value = local.ip_in_array
}

output "ip_array_vars" {
  value = local.ip_in_array_vars
}
