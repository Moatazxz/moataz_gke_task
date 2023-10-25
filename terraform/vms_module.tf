module "VMs" {
  source                = "./modules/VMs"

  my_vpc_id             = module.network.my_vpc_id
  machine_name          = var.machine_name
  machine_type          = var.machine_type
  machine_zone          = var.machine_zone
  machine_image         = var.machine_image
  mgmt_subnet_id        = module.network.mgmt_subnet_id
  service_account_email = module.service_account.service_account_email
}
