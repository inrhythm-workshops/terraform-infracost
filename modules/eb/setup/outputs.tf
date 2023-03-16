output "eb_sg" {
  value = aws_security_group.loadbalancer-sg
}

output "eb_app_name" {
  value = aws_elastic_beanstalk_application.app.name
}

output "elasticbeanstalk-service-role-id" {
  value = aws_iam_role.elasticbeanstalk-service-role.id
}

output "elasticbeanstalk-service-role-name" {
  value = aws_iam_role.elasticbeanstalk-service-role.name
}

output "elasticbeanstalk-service-role-arn" {
  value = aws_iam_role.elasticbeanstalk-service-role.arn
}

output "elasticbeanstalk-EC2andSSM-role-id" {
  value = aws_iam_role.elasticbeanstalk-EC2andSSM-role.id
}

output "elasticbeanstalk-EC2andSSM-role-name" {
  value = aws_iam_role.elasticbeanstalk-EC2andSSM-role.name
}

output "elasticbeanstalk-EC2andSSM-role-arn" {
  value = aws_iam_role.elasticbeanstalk-EC2andSSM-role.arn
}

output "elasticbeanstalk-EC2andSSM-role" {
  value = aws_iam_role.elasticbeanstalk-EC2andSSM-role
}

output "elasticbeanstalk-EC2andSSM-role-instance-profile" {
  value = aws_iam_instance_profile.elasticbeanstalk-EC2andSSM-role
}
