#cluster auth module 
variable "project_id" {}
variable "cluster_name" {} 
variable "location" {}

#k8sCluster Module

variable "cluster_node_count" {}
variable "cluster_services_ip_range" {}
variable "cluster_ip_range" {}
variable "master_ip_range" {}
#node pool module

variable "node_machine_type" {}

variable "node_zone1" {}
# variable "node_zone2" {}
#network module
variable "region" {}
variable "cidr_block_1" {}


#service account module 
variable "service_account_id" {}

#vm 
variable "machine_name" {}
variable "machine_type" {}
variable "machine_zone" {}
variable "machine_image" {}