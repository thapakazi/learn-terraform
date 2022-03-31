locals {
  ip_in_array =  compact(split("\n", file("ips.txt")))
}

output "ip_array" {
  value = local.ip_in_array
}
