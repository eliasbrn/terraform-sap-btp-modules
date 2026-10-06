variable "subaccount_stage" {
  description = "Stage of the Subaccount"
  type = string
}

variable "landscape_name" {
  description = "Name of the Landscape"
  type = string
}

variable "region" {
  description = "Region of the Subaccount"
  type = string
}

variable "parent" {
  description = "Directory in which the subaccount is created "
  default = null
  type = string
}
