# Terraform Demo
This repository contains infrastructure-as-code configuration to stand up our desired architecture.

## Getting Started

# Pre-Requisities
* Install the latest version of Terraform, dependency lockfiles were generated on version v1.4.0
* Generate a random string by running the following in your terminal:
`echo $RANDOM | md5sum | head -c 5; echo;`
* Edit modules/setup/dynamodb.tf and replace INSERTNAME with your generated string (line 2)
* Edit modules/setup/s3.tf and replace INSERTNAME with your generated string (line 2)
* Edit modules/backend.tf and replace INSERTNAME with your generated string (line 3,8)

# Initial Setup

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.58.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eb_setup_workshop"></a> [eb\_setup\_workshop](#module\_eb\_setup\_workshop) | ./modules/eb/setup | n/a |
| <a name="module_eb_workshop"></a> [eb\_workshop](#module\_eb\_workshop) | ./modules/eb | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | n/a | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | n/a | `string` | n/a | yes |
| <a name="input_eb_instance_type"></a> [eb\_instance\_type](#input\_eb\_instance\_type) | n/a | `string` | `"t2.small"` | no |
| <a name="input_eb_service_role_name"></a> [eb\_service\_role\_name](#input\_eb\_service\_role\_name) | The ARN of an IAM service role under which the application version is deleted. Elastic Beanstalk must have permission to assume this role. | `string` | `"EBServiceRole"` | no |
| <a name="input_eb_solution_stack"></a> [eb\_solution\_stack](#input\_eb\_solution\_stack) | A regex string to apply to the solution stack list returned by AWS. | `string` | `"64bit Amazon Linux 2 v5.7.0 running Node.js 16 "` | no |
| <a name="input_eb_wait_for_ready_timeout"></a> [eb\_wait\_for\_ready\_timeout](#input\_eb\_wait\_for\_ready\_timeout) | The maximum duration that Terraform should wait for an Elastic Beanstalk Environment to be in a ready state before timing out. | `string` | `"30m"` | no |
| <a name="input_eb_workshop_app_type"></a> [eb\_workshop\_app\_type](#input\_eb\_workshop\_app\_type) | A string identifier on the type of application to be served, e.g. ui, api, client, server, etc. | `string` | n/a | yes |
| <a name="input_eb_workshop_description"></a> [eb\_workshop\_description](#input\_eb\_workshop\_description) | n/a | `string` | `"TF Workshop 2023 Spring"` | no |
| <a name="input_eb_workshop_max_instances"></a> [eb\_workshop\_max\_instances](#input\_eb\_workshop\_max\_instances) | n/a | `string` | `"2"` | no |
| <a name="input_eb_workshop_min_instances"></a> [eb\_workshop\_min\_instances](#input\_eb\_workshop\_min\_instances) | n/a | `string` | `"1"` | no |
| <a name="input_eb_workshop_name"></a> [eb\_workshop\_name](#input\_eb\_workshop\_name) | n/a | `string` | `"IRWorkshop"` | no |
| <a name="input_eb_workshop_settings"></a> [eb\_workshop\_settings](#input\_eb\_workshop\_settings) | n/a | `list(any)` | n/a | yes |
| <a name="input_env_cidr_block"></a> [env\_cidr\_block](#input\_env\_cidr\_block) | CIDR Block for VPC environment for AWS Networking Resources. | `string` | n/a | yes |
| <a name="input_gen_id"></a> [gen\_id](#input\_gen\_id) | n/a | `string` | `"9feb1"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->