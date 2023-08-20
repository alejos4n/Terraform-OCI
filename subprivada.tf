resource "oci_core_subnet" "test_subnet" {
    #Required
    cidr_block = "10.0.1.0/24"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaas2j62n7ij4soayhlbezqzngwazedpc6mqheyblaxsut6sosejlbq"
    vcn_id = module.vcn.vcn_id
}