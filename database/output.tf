output "rds_db_instance_address" {
  value = "${module.rds.this_db_instance_address}"
}

output "rds_db_instance_arn" {
  value = "${module.rds.this_db_instance_arn}"
}

output "rds_db_instance_availability_zone" {
  value = "${module.rds.this_db_instance_availability_zone}"
}

output "rds_db_instance_endpoint" {
  value = "${module.rds.this_db_instance_endpoint}"
}

output "rds_db_instance_hosted_zone_id}" {
  value = "${module.rds.this_db_instance_hosted_zone_id}"
}

output "rds_db.this_db_instance_id" {
  value = "${module.rds.this_db_instance_id}"
}

output "rds_db_instance_resource_id" {
  value = "${module.rds.this_db_instance_resource_id}"
}

output "rds_db_instance_status}" {
  value = "${module.rds.this_db_instance_status}"
}

output "rds_db_instance_name" {
  value = "${module.rds.this_db_instance_name}"
}

output "rds_db_instance_username" {
  value = "${module.rds.this_db_instance_username}"
}

# output "rds_db_password" {
#   value = "${data.aws_ssm_parameter.applications_db_password.value}"
# }

output "rds_db_instance_port" {
  value = "${module.rds.this_db_instance_port}"
}

output "rds_db_subnet_group_id" {
  value = "${module.rds.this_db_subnet_group_id}"
}

output "rds_db_subnet_group_arn" {
  value = "${module.rds.this_db_subnet_group_arn}"
}

output "rds_db_parameter_group_id" {
  value = "${module.rds.this_db_parameter_group_id}"
}

output "rds_db_parameter_group_arn" {
  value = "${module.rds.this_db_parameter_group_arn}"
}

output "rds_db_option_group_id" {
  value = "${module.rds.this_db_option_group_id}"
}

output "rds_db_option_group_arn" {
  value = "${module.rds.this_db_option_group_arn}"
}