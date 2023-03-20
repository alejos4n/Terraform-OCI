resource "oci_core_virtual_network" "vcn1" {
   cidr_block = "172.0.0.0/16"
   dns_label = "vcn1"
   compartment_id = "${var.compartment_ocid}"
   display_name = "vcn1"
}