module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_public_subnets
  public_subnets  = var.vpc_private_subnets
  database_subnets = var.vpc_database_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

variable "vpc_name" {
  description = "VPC Name"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
}

variable "vpc_public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = []
}

variable "vpc_private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = []
}

variable "vpc_database_subnets" {
  description = "A list of database subnets"
  default     = []
}

variable "vpc_azs" {
  description = "A list of availability zones in the region"
  default     = []
}

variable "vpc_enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = false
}

# variable "vpc_single_nat_gateway" {
#   description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
#   default     = false
# }

# variable "vpc_one_nat_gateway_per_az" {
#   description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`."
#   default     = false
# }