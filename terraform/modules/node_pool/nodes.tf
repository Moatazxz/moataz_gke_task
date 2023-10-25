# resource "google_container_node_pool" "project_pool" {
#   name       = "${var.cluster_name}-node-pool"
#   location   = var.node_pool_location
#   cluster    = var.cluster_name
#   node_count = var.cluster_node_count

#   node_config {
#     preemptible     = false
#     machine_type    = var.node_machine_type
#     service_account = var.service_account_email
#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform"
#     ]
#   }
# }