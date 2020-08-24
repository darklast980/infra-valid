terraform {
  backend "s3" {
    bucket  = "valid-s3"
    key     = "valid-tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}