

resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = var.compartment_ocid
    shape = "VM.Standard.E2.1"
    source_details {
        source_id = "ocid1.image.oc1.phx.aaaaaaaawp7ptlcyiwv3bh2crli27fl6sdzi4kyfitc5omzcpiupeygrz5xq"
        source_type = "image"
    }

    # Optional
    display_name = "instancia1"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.phx.aaaaaaaaa6sgtwnz3ffpvs7woj7tso35s2gfj4di62khcnfs5n7lqiq5d6aq"
    }
    metadata = {
        ssh_authorized_keys = file(var.ssh_public_key)
    } 
    preserve_boot_volume = false
}