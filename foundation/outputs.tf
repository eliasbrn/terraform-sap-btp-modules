output "subaccount_id" {
    description = "ID of the Subaccount"
    value = btp_subaccount.this.id
    type = string
}

output "cf_org_id" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.cloudfoundry.labels
  )["Org ID"]
}

output "cf_api_url" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.cloudfoundry.labels
  )["API Endpoint"]
}