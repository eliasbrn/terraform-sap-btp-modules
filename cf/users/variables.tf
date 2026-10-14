variable "users" {
  description = "List of Cloud Foundry Users with their e-mail and org roles"
  type = map(list(string))
}

variable "cf_org_id" {
  description = "ID of the Cloud Foundry Organization"
  type = string
}

variable "origin" {
  description = "Origin used for all created users"
  type = string
}