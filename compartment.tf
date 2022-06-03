resource "oci_identity_compartment" "tf-compartment" {
  # Required
  compartment_id = var.comparment_ocid
  description    = "Compartment for Terraform resources."
  name           = "compartment_desde_terraform"
}