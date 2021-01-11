variable "cluster_name" {
  description = "What to name the blue/green cluster and all of its associated resources"
  default = ""
}

variable "color" {
  description = "The color to assign to the cluster naming"
  default = ""
}

variable "image_id" {
  description = "The AMI ID to use for the cluster"
  default = "ami-012c8e41be3c2463e"
}

variable "instance_type" {
  description = "The instance type to use for the cluster"
  default = "t2.micro"
}

variable "security_groups" {
  description = "The security groups to attach to the ASG instances"
  default     = []
}

variable "max_size" {
  description = "The number of instances to put into the cluster"
  default     = 1
}

variable "min_size" {
  description = "The number of instances to put into the cluster"
  default     = 1
}

variable "desired_capacity" {
  description = "The number of instances to put into the cluster"
  default     = 1
}

variable "wait_for_capacity_timeout" {
  description = "How long to wait before timing out introducing the new ASG instances"
  default     = 0
}

variable "subnet_ids" {
  description = "The subnets to launch the instances into"
  default     = []
}

variable "product" {
  description = "Product"
  default = ""
}

variable "target_group_arns" {
  description = "The target groups from the load balancer to attach the new instances to"
  default     = []
}

variable "ssh_key_name" {
  description = "The name of an EC2 Key Pair that can be used to SSH to the EC2 Instances in this cluster. Set to an empty string to not associate a Key Pair."
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  default     = " "
}

variable "iam_instance_profile" {
  description = "The IAM profile to attach to new instances"
  default     = ""
}