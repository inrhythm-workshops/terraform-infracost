variable "aws_region" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "aws_account_id" {
  type        = string
  description = "AWS Account Identifier."
}

variable "terraform_state_bucket_name" {
  type        = string
  description = "Name of bucket to store Terraform statefiles."
  default     = "irworkshop-789b2-terraform-state"
}