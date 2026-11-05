output "users_with_workplaces" {
  description = "List of all users with assigned SAP IdM Workplaces"
  value       = var.workplace_assignments_by_user
}