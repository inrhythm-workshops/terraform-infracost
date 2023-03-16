variable "aws_region" {
  type = string
}

variable "account_id" {
  type        = string
  description = "AWS Account Id."
}

variable "eb_app_type" {
  type        = string
  description = "A string identifier on the type of application to be served, e.g. ui, api, client, server, etc."
}

variable "eb_sg" {
  type        = string
  description = "The security group for the ElasticBeanstalk instance."
}

variable "eb_app_name" {
  type        = string
  description = "The name of the application, must be unique within your account."
  default     = "IRWorkshop"
}

variable "eb_app_settings" {
  type        = list(any)
  description = "ElasticBeanstalk Instance Settings."
}

variable "eb_solution_stack" {
  type        = string
  default     = "64bit Amazon Linux 2 v5.5.6 running Node.js 12 "
  description = "A regex string to apply to the solution stack list returned by AWS."
}

variable "eb_service_role_name" {
  type        = string
  default     = "ElasticBeanstalkServiceRole"
  description = " The ARN of an IAM service role under which the application version is deleted. Elastic Beanstalk must have permission to assume this role."
}

variable "eb_ec2_ssm_role_name" {
  type        = string
  description = "ElasticBeanstalk EC2 and SSM Service Role."
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

variable "eb_min_instances" {
  type    = string
  default = "1"
}

variable "eb_max_instances" {
  type    = string
  default = "2"
}

variable "ec2_key_pair" {
  type    = string
  default = "eb-key-pair"
}

variable "vpc_id" {
  type        = string
  description = "VPC Identifier for AWS."
}

variable "vpc_subnets" {
  type        = tuple([string, string, string])
  description = "VPC Public Subnets for ElasticBeanstalk."
}

variable "vpc_private_subnets" {
  type        = tuple([string, string, string])
  default     = ["", "", ""]
  description = "VPC Private Subnets for ElasticBeanstalk."
}

variable "associate_public_ip" {
  type        = string
  default     = "true"
  description = "EB Associate Public IP Address for Instance Settings."
}

variable "tags" {
  type        = map(any)
  description = "Tags with metadata for provisioned resources via Terraform."
}