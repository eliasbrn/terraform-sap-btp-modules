locals {
  subaccount_name       = "TRIAL | ${var.landscape_name}: CF - ${var.subaccount_stage}"
  subaccount_subdomain  = join("-", [lower(replace("trial-${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
  usage                 = var.subaccount_stage == "PRD" ? "USED_FOR_PRODUCTION" : "NOT_USED_FOR_PRODUCTION"
  cf_org_instance       = join("-", [lower(replace("trial-cf-${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
}

# --------------------------------
# Subaccount
# --------------------------------
resource "btp_subaccount" "this" {
  name         = local.subaccount_name
  subdomain    = local.subaccount_subdomain
  region       = var.subaccount_region
  parent_id    = var.subaccount_parent
  usage        = local.usage
  labels = {
    "stage"      = [var.subaccount_stage]
  }
}

# --------------------------------
# Cloud Foundry & Spaces
# --------------------------------
resource "btp_subaccount_environment_instance" "this" {
  subaccount_id    = btp_subaccount.this.id
  name             = local.subaccount_subdomain
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "trial"

  parameters = jsonencode({
    instance_name = lower(replace(local.cf_org_instance, " ", "-"))
  })
}

resource "cloudfoundry_space" "foundation" {
  name      = "Foundation"
  org       = btp_subaccount_environment_instance.this.platform_id
  labels    = { purpose : "${var.subaccount_stage}" }
}

# module "cf_users" {
#   source = "../cf/users"

#   cf_org_id = btp_subaccount_environment_instance.this.platform_id
#   origin    = var.origin

#   users = {
#     "braun_elias@gmx.de"        = ["organization_manager", "organization_user"],
#     "braun.elias17@gmail.com"   = ["organization_user"],
#     "elias.braun@audi.de"       = ["organization_auditor"]
#   }
# }

resource "cloudfoundry_org_role" "this" {
  username  = "elias.braun@audi.de"
  type      = "organization_manager"
  org       = btp_subaccount_environment_instance.this.platform_id
}

# --------------------------------
# Entitlements
# --------------------------------
module "btp_entitlements" {
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

# --------------------------------
# Role Collection Assignments
# --------------------------------
module "btp_role_collection_assignments" {
  source  = "SAP/sap-btp-role-collection-assignments/btp"
  version = "1.0.1"
  depends_on = [ btp_subaccount_role_collection.demo ]

  subaccount_id     = btp_subaccount.this.id
  default_origin_id = var.origin

  role_collection_assignments_by_user = [
    {
      role_collection_name = "Subaccount Administrator"
      user_names           = ["braun_elias@gmx.de"]
    },
    {
      role_collection_name = "Demo Role Collection"
      user_names           = ["braun_elias@gmx.de", "braun.elias17@gmail.com"]
    }
  ]
}

