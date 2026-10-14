terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
    }
    cloudfoundry = {
      source  = "cloudfoundry/cloudfoundry"
    }
    sci = {
      source  = "SAP/sap-cloud-identity-services"
    }
  }
}