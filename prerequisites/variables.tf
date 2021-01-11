##################################################################################
# VARIABLES 
##################################################################################
variable "aws_resource_profile" {
  description = "AWS account profile in which resource need to be created"
  default = "default"
}
variable "aws_state_profile" {
  description = "AWS account profile which is configured as a backend"
  default = "default"
}
variable "shared_credentials_file" {
  description = "Location of AWS credentials file"
  default = "~/.aws/credentials"
}
variable "aws_devops_bucket" {}

variable "aws_dynamodb_table" {}

variable "aws_usr_arn" {}

variable "aws_region" {
  default = "eu-west-2"
}

variable "kms_key_alias" {
  default = ""
}