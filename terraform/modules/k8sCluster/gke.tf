# creating the cluster with privet ip 
resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.cluster_location
  node_locations      = [
  var.node_zone1
  ]
  initial_node_count = var.cluster_node_count
  enable_autopilot   = false
  network            = var.my_vpc_id
  subnetwork         = var.mgmt_subnet_id
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = var.cluster_ip_range
    services_ipv4_cidr_block = var.cluster_services_ip_range
  }

  private_cluster_config {
    master_ipv4_cidr_block  = var.master_ip_range
    enable_private_nodes    = true
    enable_private_endpoint = false
  }
}

# node pool 
resource "google_container_node_pool" "project_pool" {
  name       = "${var.cluster_name}-node-pool"
  cluster    = google_container_cluster.primary.id

  # node_count = 4

  node_config {
    preemptible     = false
    machine_type    = var.node_machine_type
    service_account = var.service_account_email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

