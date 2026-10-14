locals {
  subaccount_name       = "${var.landscape_name} | ${var.subaccount_stage}"
  subaccount_subdomain  = join("-", [lower(replace("${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
  beta_enabled          = var.subaccount_stage == "PROD" ? false : true
  cf_org_name           = local.subaccount_subdomain
}

# --------------------------------
# Subaccount
# --------------------------------
resource "btp_subaccount" "this" {
  name         = local.subaccount_name
  subdomain    = local.subaccount_subdomain
  region       = var.subaccount_region
  beta_enabled = local.beta_enabled
  parent_id    = var.subaccount_parent
  labels = {
    "stage"      = [var.subaccount_stage]
  }
}

# --------------------------------
# Cloud Foundry & Spaces
# --------------------------------
resource "btp_subaccount_environment_instance" "this" {
  subaccount_id    = btp_subaccount.this.id
  name             = local.cf_org_name
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "trial"

  parameters = jsonencode({
    instance_name = lower(replace(local.cf_org_name, " ", "-"))
  })
}

resource "cloudfoundry_space" "foundation" {
  name      = "Foundation"
  org       = btp_subaccount_environment_instance.this.id
  labels    = { purpose : "${var.subaccount_stage}" }
}

# --------------------------------
# Entitlements
# --------------------------------
module "entitlements" {
  source  = "aydin-ozcan/sap-btp-entitlements/btp"
  version = "1.0.1"

  subaccount = btp_subaccount.this.id

  entitlements = {
    "alert-notification"     = ["standard"],
    "application-logs"       = ["lite"],
    "identity"               = ["application"],
 }
}


# --------------------------------
# Role Collections
# --------------------------------
resource "btp_subaccount_role_collection" "demo" {
  subaccount_id = btp_subaccount.this.id
  name          = "Demo Role Collection"
  description   = "A Demo Role Collection which can be replaced."

  roles = [
    {
      name                 = "Service Instances Viewer"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Service_Instances_Viewer"
    }
  ]
}


