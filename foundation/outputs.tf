# --------------------------------
# Subaccount
# --------------------------------
output "subaccount_id" {
    description = "ID of the Subaccount"
    value = btp_subaccount.this.id
    type = string
}

output "subaccount_name" {
  description = "Name of the subaccount"
  value       = btp_subaccount.this.name
}

output "subaccount_subdomain" {
  description = "Subdomain of the subaccount"
  value       = btp_subaccount.this.subdomain
}

# --------------------------------
# Cloud Foundry Organization
# --------------------------------
output "cf_org_id" {
  description = "ID of the Cloud Foundry Organization"
  value = btp_subaccount_environment_instance.this.platform_id
}

output "cf_api_url" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.this.labels
  )["API Endpoint"]
}
output "cf_org_name" {
  description = "Name of the Cloud Foundry Org"
  value       = btp_subaccount_environment_instance.this.name
}
output "org_members" {
  description = "All Org Members with their Org Roles"
  value = module.org_role_assignments.users_with_roles
}


# --------------------------------
# Cloud Foundry Spaces
# --------------------------------
# Foundation-Space
output "space_foundation_name" {
  description = "Name of the Space"
  value = cloudfoundry_space.foundation.name
}
output "space_foundation_id" {
  description = "ID of the Space"
  value = cloudfoundry_space.foundation.id
}
output "space_foundation_members" {
  description = "All Space Members with their Space Roles"
  value = module.space_role_assignments_foundation.users_with_roles
}

# Project-Space
output "space_project_name" {
  description = "Name of the Space"
  value = cloudfoundry_space.project.name
}
output "space_project_id" {
  description = "ID of the Space"
  value = cloudfoundry_space.project.id
}
output "space_project_members" {
  description = "All Space Members with their Space Roles"
  value = module.space_role_assignments_project.users_with_roles
}

# --------------------------------
# Entitlements
# --------------------------------
output "list_entitlements" {
  description = "List of all Entitlements"
  value = module.entitlements.entitlement_list
}

# --------------------------------
# Subscriptions & Services
# --------------------------------
output "auditlog_viewer_id" {
  description = "ID of the Audit Log Viewer Servie Subscription"
  value = btp_subaccount_subscription.auditlog_viewer.id
}

output "auditlog_management_id" {
  description = "ID of the Auditlog Management Service Instance"
  value = cloudfoundry_service_instance.auditlog_management.id
}
