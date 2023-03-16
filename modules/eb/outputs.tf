output "eb_cname" {
  value = aws_elastic_beanstalk_environment.app.cname
}

output "app" {
  value = aws_elastic_beanstalk_environment.app
}

output "zone_id" {
  value = data.aws_elastic_beanstalk_hosted_zone.current.id
}