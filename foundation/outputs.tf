# --------------------------------
# Subaccount
# --------------------------------
output "subaccount_id" {
  description = "ID of the Subaccount"
  value       = btp_subaccount.this.id
  type        = string
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
  value       = btp_subaccount_environment_instance.this.platform_id
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
# output "org_members" {
#   description = "All Org Members with their Org Roles"
#   value       = module.cf_org_role_assignments.users_with_roles
# }


# --------------------------------
# Cloud Foundry Spaces
# --------------------------------
output "cf_spaces" {
  value = {
    foundation = cloudfoundry_space.foundation.id
    project    = cloudfoundry_space.project.id
  }
}

# --------------------------------
# Entitlements
# --------------------------------
output "list_entitlements" {
  description = "List of all Entitlements"
  value       = module.entitlements.entitlement_list
}

# --------------------------------
# Subscriptions & Services
# --------------------------------
output "auditlog_viewer_id" {
  description = "ID of the Audit Log Viewer Servie Subscription"
  value       = btp_subaccount_subscription.auditlog_viewer.id
}

output "auditlog_management_id" {
  description = "ID of the Auditlog Management Service Instance"
  value       = cloudfoundry_service_instance.auditlog_management.id
}

# --------------------------------
# Trust Configuration
# --------------------------------
output "origin" {
  description = "The origin of the identity provider"
  value       = btp_subaccount_trust_configuration.this.origin
}

output "user_origin" {
  description = "The origin for user provisioning"
  value       = local.user_origin
}
