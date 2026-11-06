output "users_with_workplaces" {
  description = "List of all users with assigned SAP IdM Workplaces"
  value       = var.workplace_assignments_by_user
}

output "user_workplaces" {
  value = local.user_workplaces
}

output "role_collection_assignments" {
  value = local.workplace_role_collection_assignments
}

output "subaccount_stage" {
  value = var.subaccount_stage
}