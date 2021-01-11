######
# Launch configuration and autoscaling group
######
module "cluster_asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = "${var.cluster_name}-${var.color}-svc"

  # Launch configuration
  #
  # launch_configuration = "my-existing-launch-configuration" # Use the existing launch configuration
  # create_lc = false # disables creation of launch configuration
  lc_name = "${var.cluster_name}-${var.color}-lc"

  image_id        = "${var.image_id}"
  instance_type   = "${var.instance_type}"
  security_groups = [module.security_group.this_security_group_id]
  target_group_arns = ["${var.target_group_arns}"] 

  # Auto scaling group
  asg_name                  = "${var.cluster_name}-${var.color}-asg"
  vpc_zone_identifier       = "${data.aws_subnet_ids.private}"
  health_check_type         = "EC2"
  min_size                  = "${var.min_size}"
  max_size                  = "${var.max_size}"
  desired_capacity          = "${var.desired_capacity}"
  wait_for_capacity_timeout = "${var.wait_for_capacity_timeout}"

  key_name                     = "${var.ssh_key_name}"
  user_data                    = "${var.user_data}"
  iam_instance_profile         = "${var.iam_instance_profile}"

  tags = [
    {
      key                 = "Environment"
      value               = "${terraform.workspace}"
      propagate_at_launch = true
    },
    {
      key                 = "Project"
      value               = "${var.product}"
      propagate_at_launch = true
    },
  ]
}