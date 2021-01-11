
variable "product" {
  description = "Product"
}

variable "cluster_name" {
  description = "What to name the blue/green cluster and all of its associated resources"
  default = ""
}

variable "domain_name" {
  description = "Route53 Host Zone name"
}

variable "blue_max_size" {
  description = "max instances blue"
}

variable "blue_min_size" {
  description = "min instances blue"
}

variable "blue_desired_capacity" {
  description = "desired instances blue"
}

variable "green_max_size" {
  description = "max instances green"
}

variable "green_min_size" {
  description = "min instances green"
}

variable "green_desired_capacity" {
  description = "desired instances green"
}

variable "blue_ami" {
  description = "blue ami"
}

variable "green_ami" {
  description = "green ami"
}