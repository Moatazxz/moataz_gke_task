resource "google_compute_network" "main_vpc" {
  project                 = var.project
  name                    = "main-vpc"
  auto_create_subnetworks = false
}