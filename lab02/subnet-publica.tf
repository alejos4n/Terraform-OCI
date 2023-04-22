# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet

resource "oci_core_subnet" "vcn-public-subnet"{

  # Required
  compartment_id = var.compartment_ocid
  vcn_id = module.vcn.vcn_id
  cidr_block = "10.0.0.0/24"
  prohibit_public_ip_on_vnic = true
 
  # Optional
  route_table_id = module.vcn.ig_route_id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  display_name = "subnet-publica"
}