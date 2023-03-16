variable "eb_app_name" {
  type        = string
  description = "The name of the application, must be unique within your account."
  default     = "IRWorkshop"
}

variable "eb_app_description" {
  type        = string
  description = "Short description of the application."
}

variable "vpc_id" {
  type        = string
  description = "VPC Identifier for AWS."
}

variable "eb_service_role_name" {
  type        = string
  description = "Service Role for ElasticBeanstalk."
  default     = "ElasticBeanstalkServiceRole"
}

variable "ec2_service_role_name" {
  type        = string
  description = "Service Role for EC2 Instances."
  default     = "ElasticBeanstalkEC2andSSMRole"
}

variable "ec2_instance_profile_role_name" {
  type        = string
  description = "Service Role for EC2 Instances."
  default     = "ElasticBeanstalkEC2andSSMInstanceProfileRole"
}

variable "eb_service_role_managed_policies" {
  type = list(string)
  default = [
    "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth",
    "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkService",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy"
  ]
}

variable "eb_EC2andSSM_role_managed_policies" {
  default = [
    # "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier",
    "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  ]
}

variable "tags" {
  type        = map(any)
  description = "Tags with metadata for provisioned resources via Terraform."
}