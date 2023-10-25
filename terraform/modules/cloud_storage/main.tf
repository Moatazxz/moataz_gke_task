resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  storage_class               = var.storage_class
}