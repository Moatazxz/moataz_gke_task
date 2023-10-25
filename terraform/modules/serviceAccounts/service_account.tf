# creating SV with clusterAdmin role
resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = "${var.project}_service_account"
}

resource "google_project_iam_binding" "iam_binding" {
  project = var.project
  role    = "roles/container.admin"
  members = [
    "serviceAccount:${google_service_account.service_account.email}",
  ]
  depends_on = [google_service_account.service_account]
}
