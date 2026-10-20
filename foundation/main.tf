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

module "cf_users" {
  source = "../cf/users"

  cf_org_id = btp_subaccount_environment_instance.this.platform_id
  origin    = var.origin

  users = {
    "braun_elias@gmx.de"        = ["organization_manager", "organization_user"],
    "braun.elias17@gmail.com"   = ["organization_user"],
    "elias.braun@audi.de"       = ["organization_auditor"]
  }
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
module "foundation_role_collections" {
  source = "../btp/foundation_role_collections"

  subaccount_id    = btp_subaccount.this.id
  subaccount_stage = var.subaccount_stage
}

# --------------------------------
# Role Collection Assignments
# --------------------------------
module "btp_role_collection_assignments" {
  source  = "SAP/sap-btp-role-collection-assignments/btp"
  version = "1.0.1"
  depends_on = [module.foundation_role_collections]

  subaccount_id     = btp_subaccount.this.id
  default_origin_id = var.origin

  role_collection_assignments_by_user = [
    {
      role_collection_name = "TRIAL_PRC_Subaccount_C_Administrator"
      user_names           = ["braun_elias@gmx.de"]
    },
    {
      role_collection_name = "TRIAL_PRC_Subaccount_R_Space_Developer_DEV"
      user_names           = ["braun_elias@gmx.de", "elias.braun@audi.de"]
    },
    {
      role_collection_name = "TRIAL_PRC_Subaccount_R_Viewer"
      user_names           = ["elias.braun@audi.de", "braun.elias17@gmail.com"]
    }
  ]
}

