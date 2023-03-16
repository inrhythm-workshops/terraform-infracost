variable "www_bucket_name" {
  type        = string
  description = "Name of the bucket to be used for static website hosting."
  default     = "workshop"
}

variable "app_artifacts_bucket_name" {
  type        = string
  description = "Name of the bucket to be used for generating reports."
  default     = "workshop"
}

variable "tags" {
  type        = map(any)
  description = "Tags with metadata for provisioned resources via Terraform."
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
}