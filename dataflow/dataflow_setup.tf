


#####   create a  data flow job ########

resource "google_dataflow_job" "big_data_job" {
  name              = var.data_flow_name
  template_gcs_path = var.template_gcs_path
  temp_gcs_location = var.temp_gcs_location
  project = var.project_name
  network = var.network_name
  zone =var.zone
  region = var.region 
  machine_type = var.machine_type
  max_workers = var.max_workers
  

  
}