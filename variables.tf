variable "aws_region" {
  type = string
}

variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}

variable "gen_id" {
  type    = string
  default = "9feb1"
}

variable "env_cidr_block" {
  type        = string
  description = "CIDR Block for VPC environment for AWS Networking Resources."
}

variable "eb_workshop_settings" {
  type = list(any)
}

variable "eb_workshop_app_type" {
  type        = string
  description = "A string identifier on the type of application to be served, e.g. ui, api, client, server, etc."
}

variable "eb_workshop_min_instances" {
  type    = string
  default = "1"
}

variable "eb_workshop_max_instances" {
  type    = string
  default = "2"
}

variable "eb_solution_stack" {
  type        = string
  default     = "64bit Amazon Linux 2 v5.7.0 running Node.js 16 "
  description = "A regex string to apply to the solution stack list returned by AWS."
}

variable "eb_service_role_name" {
  type        = string
  default     = "EBServiceRole"
  description = " The ARN of an IAM service role under which the application version is deleted. Elastic Beanstalk must have permission to assume this role."
}

variable "eb_wait_for_ready_timeout" {
  type        = string
  default     = "30m"
  description = "The maximum duration that Terraform should wait for an Elastic Beanstalk Environment to be in a ready state before timing out."
}

variable "eb_instance_type" {
  type    = string
  default = "t2.small"
}

variable "eb_workshop_description" {
  type    = string
  default = "TF Workshop 2023 Spring"
}

variable "eb_workshop_name" {
  type    = string
  default = "IRWorkshop"
}