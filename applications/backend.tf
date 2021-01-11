##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    bucket                  = "tfbackend-application"
    dynamodb_table          = "tfbackend-application-tfstatelock"
    region                  = "eu-west-2"
    key                     = "application.tfstate"
  }
}

data "terraform_remote_state" "default" {
  backend = "s3"

  config = {
    bucket                  = "tfbackend-application"
    dynamodb_table          = "tfbackend-application-tfstatelock"
    region                  = "eu-west-2"
    key                     = "application.tfstate"
  }
}