resource "aws_dynamodb_table" "terraform-state" {
  name           = "irworkshop-789b2-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
