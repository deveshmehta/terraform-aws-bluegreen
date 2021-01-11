##################################################################################
# Options ASG Resource Primary
##################################################################################
module "blue_cluster_asg" {
  source = "./modules/cluster-asg"

  cluster_name = "${var.cluster_name}"
  color        = "blue"

  image_id      = "${var.blue_image_id}"
  instance_type = "${var.blue_instance_type}"
  ssh_key_name  = "${var.ssh_key_name}"

  target_group_arns = [
    "${element(concat(module.blue_cluster_alb.target_group_arns, list("")), 0)}",
    "${element(concat(module.gren_cluster_alb.target_group_arns, list("")), 0)}",
  ]

  min_size                  = "${var.blue_min_size}"
  max_size                  = "${var.blue_max_size}"
  desired_capacity          = "${var.blue_desired_capacity}"
  wait_for_capacity_timeout = "${var.blue_wait_for_capacity_timeout}"
  product                   = "${var.product}"

}
