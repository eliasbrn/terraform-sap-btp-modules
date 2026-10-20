output "users_with_roles" {
  description = "List of all Cloud Foundry users with assigned org roles"
  value       = var.org_role_assignments_by_user
}