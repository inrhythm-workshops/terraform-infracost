locals {
  application_name       = "terraform-infracost"
  application_short_name = "ir-ti-${var.gen_id}"
  account_id             = data.aws_caller_identity.current.account_id
  prefix                 = "${local.application_short_name}-${terraform.workspace}"

  tags = {
    application_name = local.application_name
    prefix           = local.prefix
    environment      = terraform.workspace,
    terraform        = "true"
  }
}