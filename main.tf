
provider "google" {
  project=var.project_name
  access_token = "ya29.a0AfH6SMDOtuuxrkR7CiAS7VzdYPjRqzfPkH-jbbFnmrVVPzRFQJt1fThquNWU85ytEuFw-Da2fSHKSzpzHMXIHIvEXnAEfunh7xpyJnDbxzEZSkE3gM1uVq81AYCoQ8o-EqayriQHU-lvM6NPngYX4pTIStLp-73gM5KtRYsdhNRsVud5DK_jY2DrMUZT97rnzFjG6KHl5835ONKMAc489DZSASbuZRMonXrQAwDCsZKD2qftby3DF2hUnBU3h9A2dVoLEH4"
}
/*
##############################
     #  composer  #
##############################


module "composer" {
    source = "./composer"
    composer_cluster_name=var.composer_cluster_name
    project_name=var.project_name
    region=var.composer_region
    zone=var.composer_zone
    database_machine_type=var.database_machine_type
    webserver_machine_type=var.webserver_machine_type
    composer_node_count=var.composer_node_count
    composer_machine_type=var.composer_machine_type
    disk_size_gb=var.disk_size_gb
    network_name=var.compose_network_name
    subnetwork=var.composer_subnetwork
    composer_network_tag=var.composer_network_tag
    service_account=var.service_account


    //create private network cloud composer 
    services_ipv4_cidr_block=var.services_ipv4_cidr_block
    master_ipv4_cidr_block=var.master_ipv4_cidr_block
    cloud_sql_ipv4_cidr_block=var.cloud_sql_ipv4_cidr_block
    web_server_ipv4_cidr_block=var.web_server_ipv4_cidr_block

    image_version=var.image_version
    python_version=var.python_version
  
}

##############################
     #  dataflow  #
##############################




module "dataflow" {
    source = "./dataflow"
    data_flow_name=var.data_flow_name
    temp_gcs_location=var.temp_gcs_location
    template_gcs_path=var.template_gcs_path
    project_name=var.project_name
    network_name=var.dataflow_network_name
    zone=var.dataflow_zone
    region=var.dataflow_region
    machine_type=var.dataflow_machine_type
    max_workers=var.max_workers


}
 */

/*
##############################
#  Internal Address for Vm's #
##############################

//internal ip for jump_server
module "internal_ip_jump_server" {
   source = "./compute/address"
   project_name=var.project_name
   subnetwork = var.internal_ip_jump_server_subnetwork
   address_type = var.internal_ip_jump_server_address_type
   region = var.internal_ip_jump_server_region
 }


//internal ip for pelican_vm 

module "internal_ip_for_pelican_vm" {
   source = "./compute/address"
   project_name=var.project_name
   subnetwork = var.pelican_vm_subnetwork
   address_type = var.pelican_vm_address_type
   region = var.pelican_vm__region
}

//internal ip for dm-onprem-jump-server

module "internal_ip_for_dm_onprem_jumpserver" {
   source = "./compute/address"
   project_name=var.project_name
   subnetwork = var.dm_onprem_jumpserver_subnetwork
   address_type = var.dm_onprem_jumpserver_address_type
   region = var.dm_onprem_jumpserver_region
 }

*/

 ##############################
     #  Compute engine   #
 ##############################


//creation of cloud_jump_vm


module "cloud_jump_vm" {
    source = "./compute/virtual_machine"
    project_name=var.project_name
    compute_instance_name=var.cloud_jump_vm_name
    compute_machine_type=var.cloud_jump_vm_machine_type
    zone=var.cloud_jump_vm_zone
    compute_engine_network_tags=var.cloud_jump_vm_network_tags

    compute_subnetwork_name=var.cloud_jump_vm_subnetwork
    //compute_network_ip="${module.internal_ip_jump_server.internal_address}"

    compute_vm_image=var.cloud_jump_vm_image
    compute_boot_disk_size=var.cloud_jump_vm_boot_disk_size

    
}

//creation of pelican_vm 


module "pelican_vm" {
    source = "./compute/virtual_machine"
    project_name=var.project_name
    compute_instance_name=var.pelican_vm_name
    compute_machine_type=var.pelican_vm_machine_type
    zone=var.pelican_vm_zone
    compute_engine_network_tags=var.pelican_vm_network_tags

    compute_subnetwork_name=var.pelican_vm_subnetwork
    //compute_network_ip="${module.internal_ip_for_pelican_vm.internal_address}"

    compute_vm_image=var.pelican_vm_image
    compute_boot_disk_size=var.pelican_vm_boot_disk_size

    
}
/*

//creation of dm_on_prem_jump_server

module "dm_on_prem_jump_server" {
    source = "./compute/virtual_machine"
    project_name=var.project_name
    compute_instance_name=var.dm_on_prem_jump_server_name
    compute_machine_type=var.dm_on_prem_jump_server_machine_type
    zone=var.dm_on_prem_server_zone
    compute_engine_network_tags=var.dm_on_prem_jump_server_network_tags

    compute_subnetwork_name=var.dm_on_prem_jump_server_subnetwork
    //compute_network_ip="${module.internal_ip_for_dm_onprem_jumpserver.internal_address}"

    compute_vm_image=var.dm_on_prem_jump_server_image
    compute_boot_disk_size=var.dm_on_prem_jump_server_boot_disk_size

    
}


*/