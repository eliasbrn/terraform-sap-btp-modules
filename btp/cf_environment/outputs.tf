output "id" {
  description = "ID of the Cloud Foundry Environment Instance"
  value = btp_subaccount_environment_instance.cloudfoundry.id
  type = string
}