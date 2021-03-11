
###################################
#        Compute Engine Creation  #
###################################


resource "google_compute_instance" "vm" {
  project = var.project_name
  name         = var.compute_instance_name
  machine_type = var.compute_machine_type
  zone         = var.zone
  tags = var.compute_engine_network_tags

  network_interface {
   subnetwork = var.compute_subnetwork_name
   //network_ip = var.compute_network_ip
  }

  
 boot_disk {
    initialize_params {
      image = var.compute_vm_image
      size = var.compute_boot_disk_size
    }
  }

}







