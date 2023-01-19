terraform {
  required_version = ">= v1.1.8"
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = ">=1.26.0"
    }
  }
}
