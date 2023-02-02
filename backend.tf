terraform {
  backend "s3" {
    bucket = "sireesharemotestate"
    key    = "workspaces.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
  }
}
