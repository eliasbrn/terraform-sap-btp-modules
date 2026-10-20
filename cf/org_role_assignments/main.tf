 # Convert the user-to-roles map into a flat list of role assignments
 locals {
  role_assignments = flatten([
    for email, roles in var.org_role_assignments_by_user : [
      for role in roles : {
        email = email
        role  = role
      }
    ]
  ])
}


# Create one role assignment per user-role combination
resource "cloudfoundry_org_role" "this" {
  for_each = {
    for assignment in local.role_assignments :
    "${assignment.email}-${assignment.role}" => assignment
  }

  username  = each.value.email
  type      = each.value.role
  origin    = var.origin
  org       = var.cf_org_id
}
