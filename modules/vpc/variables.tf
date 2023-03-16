variable "tags" {
  type        = map(any)
  description = "Tags with metadata for provisioned resources via Terraform."
}

variable "env_cidr_block" {
  type        = string
  description = "CIDR Block for VPC environment for AWS Networking Resources."
}

variable "azs" {
  type        = list(string)
  description = "Availabilty Zones for AWS Resources."
}