data "aws_iam_policy_document" "elasticbeanstalk-service-role" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]

    effect = "Allow"

    principals {
      type = "Service"
      identifiers = [
        "elasticbeanstalk.amazonaws.com"
      ]
    }
  }
}

data "aws_iam_policy_document" "elasticbeanstalk-EC2andSSM-role" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]

    effect = "Allow"

    principals {
      type = "Service"
      identifiers = [
        "ec2.amazonaws.com"
      ]
    }
  }
}