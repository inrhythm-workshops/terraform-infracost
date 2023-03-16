terraform {
  backend "s3" {
    bucket               = "ir-workshop-9feb1-terraform-state"
    workspace_key_prefix = "env"
    encrypt              = true
    key                  = "ir-workshop.tfstate"
    region               = "us-east-1"
    dynamodb_table       = "ir-workshop-9feb1-state-lock"
  }
}