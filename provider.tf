provider "oci" {
  #traigo las variables del archivo variables
  #este a su vez las trae del archivo terraform
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = "D:\\Terraform\\miclaveprivada"
  fingerprint      = var.fingerprint
  region           = var.region
}