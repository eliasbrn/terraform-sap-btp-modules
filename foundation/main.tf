locals {
  subaccount_name       = "TRIAL | ${var.landscape_name}: CF - ${var.subaccount_stage}"
  subaccount_subdomain  = join("-", [lower(replace("trial-${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
  usage                 = var.subaccount_stage == "PRD" ? "USED_FOR_PRODUCTION" : "NOT_USED_FOR_PRODUCTION"
  cf_org_instance       = join("-", [lower(replace("trial-cf-${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
  user_origin           = "${var.origin}-platform"
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
# Cloud Foundry & Org User Roles
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

module "org_role_assignments" {
  source     = "../cf/org_role_assignments"

  cf_org_id  = btp_subaccount_environment_instance.this.platform_id
  origin     = local.user_origin

  org_role_assignments_by_user = {
    "braun_elias@gmx.de"        = ["organization_manager", "organization_user"],
    "braun.elias17@gmail.com"   = ["organization_user"],
    "elias.braun@audi.de"       = ["organization_user"]
  }
}

# --------------------------------
# Cloud Foundry Spaces & Qutoas
# --------------------------------
# Foundation-Space
resource "cloudfoundry_space" "foundation" {
  name      = "Foundation"
  org       = btp_subaccount_environment_instance.this.platform_id
  labels    = { purpose : "${var.subaccount_stage}" }
}

resource "cloudfoundry_space_role" "provisioner" {
  depends_on = [ module.org_role_assignments, cloudfoundry_space.foundation ]

  username = "braun_elias@gmx.de"
  type     = "space_developer"
  space    = cloudfoundry_space.foundation.id
  origin   = "sap.ids"
  
}

module "space_role_assignments_foundation" {
  depends_on = [ module.org_role_assignments, cloudfoundry_space.foundation ]
  source  = "../cf/space_role_assignments"

  space   = cloudfoundry_space.foundation.id
  origin  = local.user_origin

  space_role_assignments_by_user = {
    "braun_elias@gmx.de"        = ["space_manager", "space_developer"],
    "braun.elias17@gmail.com"   = ["space_supporter"],
    "elias.braun@audi.de"       = ["space_auditor"]
  }
}

resource "cloudfoundry_space_quota" "foundation_space_quota" {
  depends_on               = [ cloudfoundry_space.foundation ]

  name                     = "Foundation"
  total_memory             = 1024
  total_routes             = 10
  total_services           = 10
  instance_memory          = 1024
  total_app_instances      = 10
  allow_paid_service_plans = true
  org                      = btp_subaccount_environment_instance.this.platform_id
  spaces                   = [cloudfoundry_space.foundation.id]
}

# Project-Space
resource "cloudfoundry_space" "project" {
  name      = var.landscape_name
  org       = btp_subaccount_environment_instance.this.platform_id
  labels    = { purpose : "${var.subaccount_stage}" }
}

module "space_role_assignments_project" {
  depends_on = [ module.org_role_assignments, cloudfoundry_space.project]
  source  = "../cf/space_role_assignments"

  space   = cloudfoundry_space.project.id
  origin  = local.user_origin

  space_role_assignments_by_user = {
    "braun_elias@gmx.de"        = ["space_manager"]
  }
}

resource "cloudfoundry_space_quota" "project_space_quota" {
  depends_on               = [ cloudfoundry_space.project  ]

  name                     = local.subaccount_name
  total_memory             = 8192
  total_routes             = 50
  total_services           = 50
  instance_memory          = 8192
  total_app_instances      = 20
  allow_paid_service_plans = true
  org                      = btp_subaccount_environment_instance.this.platform_id
  spaces                   = [cloudfoundry_space.project.id]
}


# --------------------------------
# Entitlements
# --------------------------------
module "entitlements" {
  source  = "aydin-ozcan/sap-btp-entitlements/btp"
  version = "1.0.1"

  subaccount = btp_subaccount.this.id

  entitlements = {
    "application-logs"       = ["standard"],
    "application-logs"       = ["lite"],
    "connectivity"           = ["lite"],
    "destination"            = ["lite"],
    "auditlog-viewer"        = ["free"]
 }
}

# --------------------------------
# Subscriptions
# --------------------------------
resource "btp_subaccount_subscription" "auditlog_viewer" {
  depends_on = [ module.entitlements ]

  subaccount_id = btp_subaccount.this.id
  app_name      = "auditlog-viewer"
  plan_name     = "free"
}

# --------------------------------
# Service Instances
# --------------------------------
resource "cloudfoundry_service_instance" "auditlog_management" {
  depends_on = [ module.entitlements, cloudfoundry_space_role.provisioner]

  name                  = "AuditLog-API-Access"
  service_offering_name = "auditlog-management"
  service_plan_name     = "default"
  type                  = "managed"
  space                 = cloudfoundry_space.foundation.id
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
  default_origin_id = local.user_origin

  role_collection_assignments_by_user = [
    {
      role_collection_name = "TRIAL_PRC_Subaccount_C_Administrator"
      user_names           = ["braun_elias@gmx.de", "braun_elias2@gmx.de"]
    },
    {
      role_collection_name = "TRIAL_PRC_Subaccount_R_Space_Support"
      user_names           = ["braun_elias@gmx.de", "elias.braun@audi.de"]
    },
    {
      role_collection_name = "TRIAL_PRC_Subaccount_R_Viewer"
      user_names           = ["elias.braun@audi.de", "braun.elias17@gmail.com"]
    },
    {
      role_collection_name = "TRIAL_PRC_Subaccount_CloudConnector_C_Administrator"
      user_names           = ["cloudconnector@admin.de"]
    }

  ]
}

# --------------------------------
# Trust Configuration
# --------------------------------
resource "btp_subaccount_trust_configuration" "this" {
  subaccount_id            = btp_subaccount.this.id

  name                     = "IAS-${var.origin}"
  description              = "TRIAL IAS live Tenant - ${var.origin}"
  origin                   =  var.origin

  identity_provider        = "${var.origin}.trial-accounts.ondemand.com"
  domain                   = "${var.origin}.trial-accounts.ondemand.com"
  link_text                = "${var.origin}.trial-accounts.ondemand.com"
 
  status                   = "active"
  #auto_create_shadow_users = true
  #available_for_user_logon = true
}
