module "blue_cluster_alb" {
  source = "./modules/cluster-alb"

  cluster_name = "${var.cluster_name}"
  color        = "blue"

  load_balancer_is_internal = false

  domain_name = "${var.domain_name}"

  product        = "${var.product}"

}