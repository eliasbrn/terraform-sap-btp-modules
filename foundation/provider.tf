terraform {
  required_version = ">= 1.15.0" 

  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "~> 1.27.0"
    }
    cloudfoundry = {
      source  = "cloudfoundry/cloudfoundry"
      version = "1.17.0"
    }
    # sci = {
    #   source = "SAP/sap-cloud-identity-services"
    # }
  }
}