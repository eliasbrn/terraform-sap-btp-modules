terraform {
  required_version = ">= 1.15.0" 
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry/cloudfoundry"
      version = "1.17.0"
    }
  }
}