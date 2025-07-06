variable "my-map" {
  type = map
  default = {
    Name = "Alice"
    Team = "Payments"
  }
}

output "variable_value" {
  value = var.my-map
}

variable "my-map1" {
  type = map(number)
}

output "variable_value1" {
  value = var.my-map1
}