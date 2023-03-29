variable "irworkshop_domain" {
  type        = string
  description = "Domain name for irworkshop UI."
}

variable "tags" {
  type        = map(any)
  description = "Tags with metadata for provisioned resources via Terraform."
}

variable "force_destroy" {
  type        = bool
  default     = true
  description = "A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
}