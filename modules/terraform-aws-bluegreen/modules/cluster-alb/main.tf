##################################################################
# Application Load Balancer
##################################################################
module "cluster_alb" {
  source = "terraform-aws-modules/alb/aws"
  version = "~> 5.0"

  name = "${var.cluster_name}-${var.color}-${var.load_balancer_is_internal ? "int" : "ext"}-alb"

  load_balancer_type = "application"

  vpc_id          = data.aws_vpc.default.id
  security_groups = [module.security_group.this_security_group_id]
  subnets         = data.aws_subnet_ids.all.ids

  #   # See notes in README (ref: https://github.com/terraform-providers/terraform-provider-aws/issues/7987)
  #   access_logs = {
  #     bucket = module.log_bucket.this_s3_bucket_id
  #   }

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  https_listeners = [
    {
      port               = 443
      protocol           = "HTTPS"
      certificate_arn    = "${module.acm.this_acm_certificate_arn}"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
    }
  ]

  tags = {
    Project = "Unknown"
  }

  lb_tags = {
    MyLoadBalancer = "foo"
  }

  target_group_tags = {
    MyGlobalTargetGroupTag = "bar"
  }
}