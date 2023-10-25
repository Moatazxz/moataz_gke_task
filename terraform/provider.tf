
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }

    backend "gcs" {
    bucket      = "moataz-backend"
    prefix      = "terraform/state"
  }
  
}

provider "google" {
  project = "devops-task-402821"
  region  = var.region
  zone = "us-central1-c"
}

provider "kubernetes" {
  cluster_ca_certificate = module.gke_auth.cluster_ca_certificate
  host                   = module.gke_auth.host
  token                  = module.gke_auth.token
}



# data "google_project" "project" {
# }

# output "project_id" {
#   value = data.google_project.project.project_id
# }