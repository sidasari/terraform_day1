terraform {
  backend "s3" {
    bucket = "sireesharemotestate"
    key    = "aws-terraform.tfstate"
    region = "us-east-1"
  }
}
