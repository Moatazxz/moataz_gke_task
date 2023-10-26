# create management_subnet
resource "google_compute_subnetwork" "management_subnet" {
  name          = "magnagement-subnet"
  ip_cidr_range = var.cidr_block_1
  region        = var.region
  network       = google_compute_network.main_vpc.id
}

