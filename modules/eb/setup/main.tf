resource "aws_elastic_beanstalk_application" "app" {
  name        = var.eb_app_name
  description = var.eb_app_description
}