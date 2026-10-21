variable "space_role_assignments_by_user" {
  description = "List of Cloud Foundry Users with their e-mail and space roles"
  type = map(list(string))
}

variable "space" {
  description = "ID of the Cloud Foundry space"
  type = string
}

variable "origin" {
  description = "Origin used for all created users"
  type = string
}