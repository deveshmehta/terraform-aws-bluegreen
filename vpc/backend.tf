##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    bucket                  = "tfbackend-vpc"
    dynamodb_table          = "tfbackend-vpc-tfstatelock"
    region                  = "eu-west-2"
    key                     = "vpc.tfstate"
  }
}

data "terraform_remote_state" "default" {
  backend = "s3"

  config = {
    bucket                  = "tfbackend-vpc"
    dynamodb_table          = "tfbackend-vpc-tfstatelock"
    region                  = "eu-west-2"
    key                     = "vpc.tfstate"
  }
}