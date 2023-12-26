provider "aws" {}

terraform {
  backend "s3" {
    bucket = "b56-terraform-state--bucket"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}
