module "bigquery" {
    count = length(var.dataset_id)
    source = "./modules/bigquery"
    dataset_id = element(var.dataset_id , count.index)
}

variable "dataset_id" {
  default = ["dataset1", "dataset2","dataset3"]
}