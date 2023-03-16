resource "aws_dynamodb_table" "terraform-state" {
  name           = "ir-workshop-9feb1-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
