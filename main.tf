resource "random_id" "gen_id" {
  byte_length = 6
}

resource "aws_s3_bucket" "irworkshop" {
  bucket = "${var.irworkshop_domain}-${random_id.gen_id.id}"

  force_destroy = var.force_destroy
}
