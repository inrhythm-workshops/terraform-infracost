resource "aws_iam_role" "elasticbeanstalk-service-role" {
  name               = "${aws_elastic_beanstalk_application.app.name}-${var.eb_service_role_name}-${var.tags.environment}"
  description        = "Service Role for ElasticBeanstalk"
  assume_role_policy = data.aws_iam_policy_document.elasticbeanstalk-service-role.json
}

resource "aws_iam_role_policy_attachment" "elasticbeanstalk-service-role" {
  role       = aws_iam_role.elasticbeanstalk-service-role.name
  count      = length(var.eb_service_role_managed_policies)
  policy_arn = var.eb_service_role_managed_policies[count.index]

  depends_on = [
    aws_iam_role.elasticbeanstalk-service-role
  ]
}

resource "aws_iam_role" "elasticbeanstalk-EC2andSSM-role" {
  name               = "${aws_elastic_beanstalk_application.app.name}-${var.ec2_service_role_name}-${var.tags.environment}"
  description        = "EC2 and SSM Role for ElasticBeanstalk"
  assume_role_policy = data.aws_iam_policy_document.elasticbeanstalk-EC2andSSM-role.json
}

resource "aws_iam_role_policy_attachment" "elasticbeanstalk-EC2andSSM-role" {
  role       = aws_iam_role.elasticbeanstalk-EC2andSSM-role.name
  count      = length(var.eb_EC2andSSM_role_managed_policies)
  policy_arn = var.eb_EC2andSSM_role_managed_policies[count.index]

  depends_on = [
    aws_iam_role.elasticbeanstalk-EC2andSSM-role
  ]
}

resource "aws_iam_instance_profile" "elasticbeanstalk-EC2andSSM-role" {
  name = "${aws_elastic_beanstalk_application.app.name}-${var.ec2_instance_profile_role_name}-${var.tags.environment}-${random_id.ec2ssm_id.id}"
  role = aws_iam_role.elasticbeanstalk-EC2andSSM-role.name

  depends_on = [
    aws_iam_role.elasticbeanstalk-EC2andSSM-role
  ]
}

resource "random_id" "ec2ssm_id" {
  byte_length = 8
}