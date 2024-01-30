provider "aws" {}

terraform {
  backend "s3" {
    bucket = "roboshop-terraform-state--bucket"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}
