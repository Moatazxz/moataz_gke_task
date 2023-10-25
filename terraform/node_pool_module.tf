# module "node_pool" {
#   source                = "./modules/node_pool"
#   cluster_node_count    = var.cluster_node_count
#   node_pool_location    = var.location

#   node_machine_type     = var.node_machine_type
#   cluster_name          = module.k8sCluster.cluster_name
#   service_account_email = module.service_account.service_account_email

# }