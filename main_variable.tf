/*

//composer
variable "composer_cluster_name" {
}
variable "project_name" {
}
variable "composer_zone" {
}
variable "composer_region" {
}
variable "database_machine_type" {
}
variable "webserver_machine_type" {
}
variable "composer_node_count" {
}
variable "composer_machine_type" {
}
variable "disk_size_gb" {
}
variable "compose_network_name" {
}
variable "composer_subnetwork" {
}
variable "composer_network_tag" {
}
variable "service_account" {
}
variable "services_ipv4_cidr_block" {
}
variable "master_ipv4_cidr_block" {
}
variable "cloud_sql_ipv4_cidr_block" {
}
variable "web_server_ipv4_cidr_block" {
}
variable "image_version" {
}
variable "python_version" {
}

//dataflow

variable "data_flow_name" {
}
variable "temp_gcs_location" {
}
variable "template_gcs_path" {
}
variable "dataflow_zone" {
}
variable "dataflow_region" {
}
variable "dataflow_machine_type" {
}
variable "max_workers" {
}
variable "dataflow_network_name" {
}

*/
/*
//internal ip for jump-server

variable "internal_ip_jump_server_subnetwork" {

}
variable "internal_ip_jump_server_address_type" {

}
variable "internal_ip_jump_server_region" {

}

//internal ip for pelican vm
variable "pelican_vm_subnetwork" {

}
variable "pelican_vm_address_type" {

}
variable "pelican_vm__region" {

}

//internal ip for dm-onprem-jump-server
variable "dm_onprem_jumpserver_subnetwork" {

}
variable "dm_onprem_jumpserver_address_type" {

}
variable "dm_onprem_jumpserver_region" {

}
*/
//creation of cloud_jump_vm
variable "cloud_jump_vm_name" {
}
variable "cloud_jump_vm_machine_type" {
}
variable "cloud_jump_vm_network_tags" {
}
variable "cloud_jump_vm_subnetwork" {
}
variable "cloud_jump_vm_zone" {
}
variable "cloud_jump_vm_image" {
}
variable "cloud_jump_vm_boot_disk_size" {
}
variable "project_name" {
}

//creation of pelican_vm
variable "pelican_vm_name" {
}
variable "pelican_vm_machine_type" {
}
variable "pelican_vm_network_tags" {
}
variable "pelican_vm_subnetwork" {
}
variable "pelican_vm_zone" {
}
variable "pelican_vm_image" {
}
variable "pelican_vm_boot_disk_size" {
}
/*
//creation of dm_on_prem_jump_server

variable "dm_on_prem_jump_server_name" {

}
variable "dm_on_prem_jump_server_machine_type" {

}
variable "dm_on_prem_server_zone" {

}
variable "dm_on_prem_jump_server_network_tags" {

}
variable "dm_on_prem_jump_server_subnetwork" {

}
variable "dm_on_prem_jump_server_image" {

}
variable "dm_on_prem_jump_server_boot_disk_size" {

}


*/