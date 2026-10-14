resource "btp_subaccount_role_collection" "this" {
  for_each = var.role_collections

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