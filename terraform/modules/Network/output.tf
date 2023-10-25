output "my_vpc_id" {
  value = google_compute_network.main_vpc.id
}
output "mgmt_subnet_id" {
  value = google_compute_subnetwork.management_subnet.id
}
# output "restricted_subnet_id" {
#   value = google_compute_subnetwork.restricted_subnet.id
# }
output "mgmt_subnet_cidr" {
  value = google_compute_subnetwork.management_subnet.ip_cidr_range
}
