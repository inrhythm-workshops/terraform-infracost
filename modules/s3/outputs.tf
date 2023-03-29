output "irworkshop_website_endpoint" {
  value = aws_s3_bucket_website_configuration.irworkshop.website_endpoint
}

output "irworkshop_website_domain" {
  value = aws_s3_bucket_website_configuration.irworkshop.website_domain
}

output "irworkshop_website_bucket_regional_domain_name" {
  value = aws_s3_bucket.irworkshop.bucket_regional_domain_name
}