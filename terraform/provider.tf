provider "oci" {
  version              = ">= 3.0.0"
  tenancy_ocid         = var.oci_base_identity.tenancy_id
  region               = var.oci_base_general.region
  disable_auto_retries = false
}

