output "users" {
  description = "List of all Cloud Foundry users"
  value       = keys(var.users)
}

output "users_with_roles" {
  description = "List of all Cloud Foundry users with assigned org roles"
  value       = var.users
}