module "k8sCluster" {
  source                    = "./modules/k8sCluster"
  cluster_name              = var.cluster_name
  cluster_node_count        = var.cluster_node_count
  cluster_location          = var.location
  node_zone1 = var.node_zone1
  # node_zone2 = var.node_zone2
  mgmt_subnet_cidr          = module.network.mgmt_subnet_cidr
  cluster_services_ip_range = var.cluster_services_ip_range
  cluster_ip_range          = var.cluster_ip_range
  master_ip_range           = var.master_ip_range
  my_vpc_id                 = module.network.my_vpc_id
  mgmt_subnet_id            = module.network.mgmt_subnet_id
  # node_pool_location    = var.location
  node_machine_type     = var.node_machine_type
  service_account_email = module.service_account.service_account_email
}