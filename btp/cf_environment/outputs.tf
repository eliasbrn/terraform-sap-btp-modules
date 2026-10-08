output "org_id" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.cloudfoundry.labels
  )["Org ID"]
}

output "api_url" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.cloudfoundry.labels
  )["API Endpoint"]
}