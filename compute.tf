// Get all availability domains for the region
data "oci_identity_availability_domains" "ads" {
  compartment_id = "${var.tenancy_ocid}"
}
resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = var.compartment_ocid
    shape = "VM.Standard.E4.Flex"
    source_details {
        source_id = "ocid1.image.oc1.sa-santiago-1.aaaaaaaahulxzohkmje5lshmebwly2z3v3xdumypcunqlhe3l3skb4d77rha"
        source_type = "image"
    }

    # Optional
    display_name = "insterraform"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.sa-santiago-1.aaaaaaaa4rxdl6s5arnjnevnbphpdr66gfwhbvx7c2e5mvntw3mxfxkhj3cq"
    }
    metadata = {
        ssh_authorized_keys = file(var.ssh_public_key)
    } 
    preserve_boot_volume = false
}