terraform {
  backend "s3" {
    bucket = "sireesharemotestate"
    key    = "metaagrs.tfstate"
    region = "us-east-1"
  }
}
