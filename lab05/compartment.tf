# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_compartment

resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = var.compartment_ocid
    description = "Compartment for Terraform resources."
    name = "comp_temporal"
}