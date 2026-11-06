variable "workplace_assignments_by_user" {
  description = "List of Users with their e-mail and SAP IdM workplace"
  type        = map(list(string))
}

variable "cf_org_id" {
  description = "ID of the Cloud Foundry Organization"
  type        = string
}

variable "cf_spaces" {
  description = "List of all Cloud Foundry Space IDs in the subaccount"
  type        = list(string)
}

variable "user_origin" {
  description = "Origin used for all created users"
  type        = string
}

variable "directory_id" {
  description = "ID of the Directory"
  type        = string
  default     = null
}

variable "subaccount_id" {
  description = "ID of the Subaccount"
  type        = string
}

variable "subaccount_stage" {
  description = "Stage of the Subaccount"
  type        = string

  validation {
    condition = contains(
      ["SBX", "DEV", "QA", "INT", "PRD"],
      var.subaccount_stage
    )
    error_message = "subaccount_stage must be one of: SBX, DEV, QA, INT, PRD."
  }
}