variable "cluster_name" {
  type = string
}
variable "cluster_node_count" {
  type = number
}
variable "cluster_location" {
  type = string
}
variable "cluster_services_ip_range" {
  type = string
}
variable "master_ip_range" {
  type = string
}
variable "cluster_ip_range" {
  type = string
}
variable "my_vpc_id" {}
variable "mgmt_subnet_id" {}
variable "mgmt_subnet_cidr" {}

# variable "cluster_node_count" {
#   type = number
# }
# variable "node_pool_location" {
#   type = string
# }

# variable "node_pool_location_list" {
#   type = list(string)
# }
variable "node_zone1" {}
# variable "node_zone2" {}

variable "node_machine_type" {
  type = string
}
variable "service_account_email" {}