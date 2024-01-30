provider "aws" {}

terraform {
  backend "s3" {
    bucket = "roboshop-terraform-state--bucket"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}

# Calling backend module
module "local-module"{
    source         =    "./local"
}

# This is the example, How we fetch the values from the backend module
# value = module.moduleName.outputNameDeclaredInTheBackendModule
output "public_ip"{
    value = module.local-module.public_ip
}