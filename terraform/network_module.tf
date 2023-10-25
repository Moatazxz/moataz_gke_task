module "network" {
  source       = "./modules/Network"
  project      = var.project_id
  cidr_block_1 = var.cidr_block_1
  region       = var.region
}
