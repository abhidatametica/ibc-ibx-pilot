project_name = "foundation-testing-09022021"
//creation of cloud_jump_vm
cloud_jump_vm_name = "cloud-jump-vm1"
cloud_jump_vm_machine_type = "e2-standard-2"
cloud_jump_vm_network_tags =  ["ssh-allow","http-allow"]
cloud_jump_vm_subnetwork  = "projects/foundation-testing-09022021/regions/us-east4/subnetworks/sb-vpc-dm-pilot-composer-us-east4"
cloud_jump_vm_zone = "us-east4-c"
cloud_jump_vm_image = "centos-7-v20210217"
cloud_jump_vm_boot_disk_size ="20"

//creation of pelican_vm
pelican_vm_name = "pelican-vm1"
pelican_vm_machine_type ="e2-standard-2"
pelican_vm_network_tags=["ssh-allow","http-allow"]
pelican_vm_zone="us-east4-c"
pelican_vm_image="centos-7-v20210217"
pelican_vm_boot_disk_size="20"
pelican_vm_subnetwork="projects/foundation-testing-09022021/regions/us-east4/subnetworks/sb-vpc-dm-pilot-composer-us-east4"



