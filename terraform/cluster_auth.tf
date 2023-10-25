module "gke_auth" {
  source       = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  project_id   = var.project_id
  cluster_name = var.cluster_name
  location     = var.location
  depends_on = [
    module.k8sCluster
  ]
}

resource "local_file" "kubeconfig" {
  content  = module.gke_auth.kubeconfig_raw
  filename = "${path.module}/kubeconfig"
  depends_on = [
    module.gke_auth
  ]
}