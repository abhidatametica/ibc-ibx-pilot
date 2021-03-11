###################################
#       Internal/external Adresss        #
###################################
/*

//internal or external adress can be defined

resource "google_compute_address" "vm_ip_Address" {
  name         = var.project_name
  subnetwork   = var.subnetwork
  address_type = var.address_type
  region       = var.region
}



//output of address ...(ip address)

output "internal_address" {
  value =google_compute_address.vm_ip_Address.address
}


