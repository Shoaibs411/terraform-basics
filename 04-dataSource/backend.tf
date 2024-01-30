terraform {
  backend "s3" {
    bucket = "roboshop-terraform-state--bucket"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}