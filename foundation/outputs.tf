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
  value = jsondecode(
    btp_subaccount_environment_instance.this.labels
  )["Org ID"]
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


# --------------------------------
# Cloud Foundry Spaces
# --------------------------------
output "space_foundation_name" {
  description = "Name of the Space"
  value = cloudfoundry_space.foundation.name
}
output "space_foundation_id" {
  description = "ID of the Space"
  value = cloudfoundry_space.foundation.id
}

# --------------------------------
# Entitlements
# --------------------------------
output "list_entitlements" {
  description = "List of all Entitlements"
  value = module.entitlements.entitlement_list
}

# --------------------------------
# Role Collections
# --------------------------------
output "role_collection_name" {
  description = "Name of the Role Collection"
  value =  btp_subaccount_role_collection.demo.name
}
