module "application-cluster" {
  source = "../modules/terraform-aws-bluegreen"

  cluster_name = var.cluster_name
  domain_name = var.domain_name
  product = var.product

  ssh_key_name                   = var.ssh_key_name
  blue_image_id                  = var.blue_image_id
  blue_weight                    = var.blue_weight
  blue_version_tag               = var.blue_version_tag
  blue_desired_capacity_stop     = var.blue_desired_capacity_stop
  blue_min_size                  = var.blue_min_size
  blue_max_size                  = var.blue_max_size
  blue_desired_capacity          = var.blue_desired_capacity
  blue_wait_for_capacity_timeout = var.blue_wait_for_capacity_timeout


  green_image_id                  = var.green_image_id
  green_weight                    = var.green_weight
  green_version_tag               = var.green_version_tag
  green_desired_capacity_stop     = var.green_desired_capacity_stop
  green_min_size                  = var.green_min_size
  green_max_size                  = var.green_max_size
  green_desired_capacity          = var.green_desired_capacity
  green_wait_for_capacity_timeout = var.blue_wait_for_capacity_timeout
  
}
