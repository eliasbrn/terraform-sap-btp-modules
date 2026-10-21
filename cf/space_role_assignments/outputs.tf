output "users_with_roles" {
  description = "List of all Space users with assigned org roles"
  value       = var.space_role_assignments_by_user
}