# module "log_bucket" {
#   source  = "terraform-aws-modules/s3-bucket/aws"
#   version = "~> 1.0"
#
#   bucket                         = "logs-${random_pet.this.id}"
#   acl                            = "log-delivery-write"
#   force_destroy                  = true
#   attach_elb_log_delivery_policy = true
# }