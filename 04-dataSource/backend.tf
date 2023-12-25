terraform {
  backend "s3" {
    bucket = "b56-terraform-state--bucket"
    key    = "basics"
  }
}