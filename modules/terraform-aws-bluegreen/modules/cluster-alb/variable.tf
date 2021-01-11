variable "cluster_name" {
  description = "What to name the blue/green cluster and all of its associated resources"
  default = ""
}

variable "color" {
  description = "The color to assign to the cluster naming"
  default = ""
}

variable "load_balancer_is_internal" {
  description = "Whether the load balancer should be resolvable on the public subnet"
  default     = true
}

variable "domain_name" {
  description = "Route53 Host Zone name"
}

variable "product" {
  description = "Product"
  default = ""
}