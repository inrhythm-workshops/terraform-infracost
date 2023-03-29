data "aws_iam_policy_document" "irworkshop" {
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
      "arn:aws:s3:::${var.irworkshop_domain}/*"
    ]
  }
}