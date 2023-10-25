variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
}

variable "region" {
  description = "The location of the bucket."
  type        = string
}

variable "storage_class" {
  description = "The Storage Class of the new bucket."
  type        = string
  default     = null
}