# resource "aws_s3_bucket" "app_assets" {
#   bucket = var.app_artifacts_bucket_name
#   acl    = "public-read"

#   force_destroy = var.force_destroy

#   tags = var.tags
# }

# resource "aws_s3_bucket_policy" "bucket_artifacts" {
#   bucket = aws_s3_bucket.app_assets.id

#   policy = data.aws_iam_policy_document.artifacts_bucket_policy.json
# }