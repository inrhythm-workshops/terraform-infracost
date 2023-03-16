data "aws_iam_policy_document" "artifacts_bucket_policy" {
  statement {
    sid = "AllowPublicReadAccess"

    actions = [
      "s3:GetObject"
    ]

    effect = "Allow"

    principals {
      type = "*"
      identifiers = [
        "*"
      ]
    }

    resources = [
      "arn:aws:s3:::${var.app_artifacts_bucket_name}/*"
    ]
  }
}

data "aws_iam_policy_document" "workshop" {
  statement {
    sid = "AllowStaticAsset"

    actions = [
      "s3:GetObject"
    ]

    effect = "Allow"

    principals {
      type = "*"
      identifiers = [
        "*"
      ]
    }

    resources = [
      "arn:aws:s3:::workshop/*"
    ]
  }
}