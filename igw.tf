resource "oci_core_internet_gateway" "test_internet_gateway" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaas2j62n7ij4soayhlbezqzngwazedpc6mqheyblaxsut6sosejlbq"
    vcn_id = module.vcn.vcn_id

    #Optional
    #enabled = var.internet_gateway_enabled
    #defined_tags = {"Operations.CostCenter"= "42"}
    #display_name = "igwterra"
    #freeform_tags = {"Department"= "Finance"}
    #route_table_id = oci_core_route_table.test_route_table.id
}