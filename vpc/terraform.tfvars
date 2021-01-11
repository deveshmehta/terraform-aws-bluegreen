# VPC
vpc_name = "my-vpc"
vpc_azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
vpc_cidr = "192.168.0.0/16"
vpc_private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
vpc_public_subnets  = ["192.168.101.0/24", "192.168.201.0/24"]
vpc_database_subnets = ["192.168.102.0/24", "192.168.202.0/24"]
vpc_enable_nat_gateway = true
# vpc_single_nat_gateway = false
# vpc_one_nat_gateway_per_az = true