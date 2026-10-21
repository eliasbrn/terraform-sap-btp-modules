variable "landscape_name" {
  description = "Name of the Landscape"
  type = string
}

variable "subaccount_stage" {
  description = "Stage of the Subaccount"
   type = string
   
   validation {
    condition = contains(
      ["SBX", "DEV", "QA", "INT", "PRD"],
      var.subaccount_stage
    )
    error_message = "subaccount_stage must be one of: SBX, DEV, QA, INT, PRD."
  }
}

variable "subaccount_region" {
  description = "Region of the Subaccount"
  type = string

  validation {
    condition = contains(
      ["eu10", "us10", "ap21"],
      var.subaccount_region
    )
    error_message = "subaccount_region must be one of: eu10, us10, ap10."
  }
}

variable "subaccount_parent" {
  description = "Directory in which the subaccount is created "
  default = null
  type = string
}

variable "origin" {
  description = "Origin of the identity provider"
  default = "axafcftur"
  type = string
}