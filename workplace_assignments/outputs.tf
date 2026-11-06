output "users_with_workplaces" {
  description = "List of all users with assigned SAP IdM Workplaces"
  value       = var.workplace_assignments_by_user
}

output "user_workplaces" {
  description = "List of all users with their permissions (Role Collections, CF Orgs, CF Spaces)"
  value = local.user_workplaces
}


output "subaccount_stage" {
  value = var.subaccount_stage
}