terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
    }
  }
}



resource "btp_subaccount_environment_instance" "cloudfoundry" {
  subaccount_id    = var.subaccount_id
  name             = var.org_name
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "trial"

  parameters = jsonencode({
    instance_name = "my-cf-org-name"
  })
}

