terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
    }
  }
}


locals {
  subaccount_name      = "${var.subaccount_stage} | ${var.landscape_name}"
  subaccount_subdomain = join("-", [lower(replace("${var.landscape_name}-${var.subaccount_stage}", " ", "-"))])
  beta_enabled         = var.subaccount_stage == "PROD" ? false : true
  subaccount_cf_org    = local.subaccount_subdomain
}


resource "btp_subaccount" "this" {
  name         = local.subaccount_name
  subdomain    = local.subaccount_subdomain
  region       = var.region
  beta_enabled = local.beta_enabled
  parent_id    = var.parent
  labels = {
    "stage"      = [var.subaccount_stage]
  }
}



