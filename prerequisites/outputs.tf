# ##################################################################################
# # OUTPUT
# ##################################################################################
output "tfbackend_s3_bucket" {
  value = "${aws_s3_bucket.tf_devops_s3_bucket.id}"
}

output "tfstatelock_dynamodb_table" {
  value = "${aws_dynamodb_table.tf_statelock_dynamodb_table.id}"
}
