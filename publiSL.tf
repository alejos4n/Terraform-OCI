# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_security_list

resource "oci_core_security_list" "public-security-list"{

# Required
  compartment_id = var.compartment_ocid
  vcn_id = module.vcn.vcn_id

# Optional
  display_name = "sl-subredpub"
}