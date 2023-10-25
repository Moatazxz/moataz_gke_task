# creating bastion
resource "google_compute_instance" "private" {
  name         = var.machine_name
  machine_type = var.machine_type
  # machine_type = "e2-micro"
  # zone         = "us-central1-a"
  zone = var.machine_zone
  boot_disk {
    initialize_params {
      image = var.machine_image
    }
  }
  service_account {
    email  = var.service_account_email
    scopes = ["cloud-platform"]
  }
  network_interface {
    network    = var.my_vpc_id
    subnetwork = var.mgmt_subnet_id
    # access_config {
      
    # }
  }
}
