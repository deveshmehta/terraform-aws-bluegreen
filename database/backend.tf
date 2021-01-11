##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    bucket                  = "tfbackend-database"
    dynamodb_table          = "tfbackend-database-tfstatelock"
    region                  = "eu-west-2"
    key                     = "database.tfstate"
  }
}

data "terraform_remote_state" "default" {
  backend = "s3"

  config = {
    bucket                  = "tfbackend-database"
    dynamodb_table          = "tfbackend-database-tfstatelock"
    region                  = "eu-west-2"
    key                     = "database.tfstate"
  }
}