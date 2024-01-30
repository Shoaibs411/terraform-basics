terraform {
  backend "s3" {
    bucket = "roboshop-terraform-state--bucket"
    key    = "functions/terraform.tfstate"
    region = "us-east-1"
  }
}