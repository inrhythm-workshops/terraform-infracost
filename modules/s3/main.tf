resource "aws_s3_bucket" "irworkshop" {
  bucket = var.irworkshop_domain

  force_destroy = var.force_destroy

  tags = var.tags
}

resource "aws_s3_bucket_ownership_controls" "irworkshop" {
  bucket = aws_s3_bucket.irworkshop.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_policy" "irworkshop" {
  bucket = aws_s3_bucket.irworkshop.id

  policy = data.aws_iam_policy_document.irworkshop.json
}

resource "aws_s3_bucket_website_configuration" "irworkshop" {
  bucket = aws_s3_bucket.irworkshop.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}