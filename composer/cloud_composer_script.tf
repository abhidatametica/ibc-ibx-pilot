#########################################################
#		Create Cloud Composer			#
#########################################################

resource "google_composer_environment" "cloud_composer" {
  name    = var.composer_cluster_name
  project = var.project_name
  region  = var.region

  config {

      database_config {
        machine_type = var.database_machine_type
      }


      web_server_config {
          machine_type = var.webserver_machine_type
        
      }
      



    node_count = var.composer_node_count

    
    node_config {
		zone         = var.zone
		machine_type = var.composer_machine_type
		disk_size_gb = var.disk_size_gb
		network    = var.network_name
		subnetwork = var.subnetwork
        tags = var.composer_network_tag
		service_account = var.service_account

           #########################################################
           #		Create Private Network Cloud Composer			#
           #########################################################

		ip_allocation_policy {
			use_ip_aliases = true
		  	//cluster_ipv4_cidr_block   = var.cluster_ipv4_cidr_block
            services_ipv4_cidr_block  = var.services_ipv4_cidr_block
            
		}
    }

    private_environment_config {
      enable_private_endpoint = true
      master_ipv4_cidr_block = var.master_ipv4_cidr_block
      cloud_sql_ipv4_cidr_block  = var.cloud_sql_ipv4_cidr_block
      web_server_ipv4_cidr_block = var.web_server_ipv4_cidr_block

    }


      image_version = var.image_version   //The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow.
      python_version = var.python_version
    
    }
  
  
  
}

