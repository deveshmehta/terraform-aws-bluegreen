##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    bucket                  = "tfbackend-presentation"
    dynamodb_table          = "tfbackend-presentation-tfstatelock"
    region                  = "eu-west-2"
    key                     = "presentation.tfstate"
  }
}

data "terraform_remote_state" "default" {
  backend = "s3"

  config = {
    bucket                  = "tfbackend-presentation"
    dynamodb_table          = "tfbackend-presentation-tfstatelock"
    region                  = "eu-west-2"
    key                     = "presentation.tfstate"
  }
}