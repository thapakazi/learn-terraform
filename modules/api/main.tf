resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "api_string" {
  value = random_string.random.result
}
