output "id" {
  description = "ID of the Cloud Foundry Environment Instance"
  value = btp_subaccount_environment_instance.cloudfoundry.id
  type = string
}

output "api_url" {
  description = "API URL of the Cloud Foundry Organization"
  value = jsondecode(
    btp_subaccount_environment_instance.cloudfoundry.labels
  )["API Endpoint"]
}