# --------------------------------
# Overview SAP IdM Workplaces
# --------------------------------
# 
# ### SPInE Foundation Team
# 1. BTP_<Account_Name>_SPINE_GA_ADMIN      --> BTP_TRIAL_SPINE_GA_ADMIN
# 2. BTP_<Account_Name>_SPINE_GA_SUPPORT    --> BTP_TRIAL_SPINE_GA_SUPPORT 
# 3. BTP_CF_SPINE_ADMIN                    
# 4. BTP_CF_SPINE_SUPPORT 
#
# ### <Functional Area> CF Subaccount
# 1. SPINE_CF_SUBACC_ADMIN
# 2. SPINE_CF_SUBACC_ADMIN_LIGHT
# 3. SPINE_CF_SUBACC_USERAUTHADMIN_LIGHT
#
# ### <Functional Area> CF Subaccount - Exception Workplaces
# 1. SPINE_CF_SUBACC_USERAUTHADMIN_Q
# 2. SPINE_CF_SUBACC_USERAUTHADMIN_I
# 3. SPINE_CF_SUBACC_USERAUTHADMIN_P
#
# ### <Functional Area> CF Spaces
# 1. BTP_CF_SPACE_DEVELOP
# 2. BTP_CF_SPACE_SUPPORT

locals {

# Maps user workplaces to their stage-specific role collections and Cloud Foundry roles
# Example:
# [
#   {
#     email       = "user@example.com"
#     workplace   = "SPINE_CF_SUBACC_ADMIN"
#     permissions = {
#       role_collections = ["..."]
#       cf_org_roles     = ["..."]
#       cf_space_roles   = ["..."]
#     }
#   }
# ]

  user_workplaces = flatten([
    for email, workplaces in var.workplace_assignments_by_user : [
      for workplace in workplaces : {
        email       = email
        workplace   = workplace
        permissions = local.workplaces[workplace][var.subaccount_stage]
      }
      if contains(keys(local.workplaces), workplace)
      && contains(keys(local.workplaces[workplace]), var.subaccount_stage)
    ]
  ])


# Maps user workplace permissions to role collections and their assigned users
#
# Example:
# {
#   "TRIAL_PRC_Subaccount_C_Administrator" = {
#     role_collection_name  = "TRIAL_PRC_Subaccount_C_Administrator"
#     user_names            = ["user1@example.com","user2@example.com"]
# }

  workplace_role_collection_assignments = {
    for role_collection in distinct(flatten([
      for user_workplace in local.user_workplaces :
      user_workplace.permissions.role_collections
    ])) :
    role_collection => {
      role_collection_name = role_collection

      user_names = distinct([
        for user_workplace in local.user_workplaces :
        user_workplace.email
        if contains(
          user_workplace.permissions.role_collections,
          role_collection
        )
      ])
    }
  }


# Maps user workplace permissions to  Cloud Foundry org roles by user
#
# Example:
# {
#   "user@example.com" = ["organization_auditor", "organization_user"]
# }

  workplace_cf_org_role_assignments = {
    for email in distinct([
      for user_workplace in local.user_workplaces :
      user_workplace.email
    ]) :
    email => distinct(flatten([
      for user_workplace in local.user_workplaces :
      user_workplace.permissions.cf_org_roles
      if user_workplace.email == email
    ]))
  }


# Maps user workplace permissions to  Cloud Foundry space roles by user
#
# Example:
# {
#   "user@example.com" = ["space_manager", "space_developer"]
# }

  workplace_cf_space_role_assignments = {
    for email in distinct([
      for user_workplace in local.user_workplaces :
      user_workplace.email
    ]) :
    email => distinct(flatten([
      for user_workplace in local.user_workplaces :
      user_workplace.permissions.cf_space_roles
      if user_workplace.email == email
    ]))
  }

}

# --------------------------------
# Global Account/ Directory Roles
# --------------------------------
resource "btp_globalaccount_role_collection_assignment" "ga_admin" {
  for_each = {
    for user_workplace in local.user_workplaces : 
    user_workplace.email => user_workplace
    if contains([
        "BTP_TRIAL_SPINE_GA_ADMIN",
        "BTP_TRIAL_SPINE_GA_SUPPORT"
    ], user_workplace.workplace)
  }

  role_collection_name = "Global Account Administrator"
  user_name            = each.value.email
}

resource "btp_directory_role_collection_assignment" "dir_admin" {
  for_each = {
    for user_workplace in local.user_workplaces :
    user_workplace.email => user_workplace
    if contains([
        "BTP_CF_SPINE_ADMIN",
        "BTP_CF_SPINE_SUPPORT"
    ], user_workplace.workplace)
  }

  directory_id         = var.directory_id
  role_collection_name = "Directory Administrator"
  user_name            = each.value.email
}

# --------------------------------
# Platform Role Collections (Subaccount)
# --------------------------------
module "btp_role_collection_assignments" {
  source  = "SAP/sap-btp-role-collection-assignments/btp"
  version = "1.0.1"

  subaccount_id     = var.subaccount_id
  default_origin_id = var.origin

  role_collection_assignments_by_user = values(
    local.workplace_role_collection_assignments
  )
}


# --------------------------------
# Cloud Foundry Org Roles 
# --------------------------------
module "cf_org_role_assignments" {
source     = "../cf/org_role_assignments"

  cf_org_id  = btp_subaccount_environment_instance.this.platform_id
  origin     = var.origin

  org_role_assignments_by_user = local.workplace_cf_org_role_assignments
}


# --------------------------------
# Cloud Foundry Space Roles 
# --------------------------------
module "cf_space_role_assignments" {
  source  = "../cf/space_role_assignments"

  space   = "87c0f167-1ef8-4033-92ce-5e49770649a3"
  origin  = var.origin

  space_role_assignments_by_user = local.workplace_cf_space_role_assignments
}