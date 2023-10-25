module "cloud_storage" {
    count = length(var.bucket_name)
    source = "./modules/cloud_storage"
    region = var.region
    storage_class = "STANDARD"
    bucket_name = element(var.bucket_name , count.index)
}

variable "bucket_name" {
  default = ["moataz_bucket1", "moataz_bucket2","moataz_bucket3"]
}