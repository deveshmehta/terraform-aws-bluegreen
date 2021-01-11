cluster_name = "presentation" 
domain_name = "example.com"
product = "presentation"  

ssh_key_name                   = "MgmtKeyPair"
blue_image_id                  = "ami-012c8e41be3c2463e"
blue_weight                    = 100
blue_version_tag               = "1.1"
blue_min_size                  = 3
blue_max_size                  = 6
blue_desired_capacity          = 3
blue_wait_for_capacity_timeout = 0

green_image_id                  = "ami-012c8e41be3c2463e"
green_version_tag               = "1.1"
green_weight                    = 0
green_min_size                  = 0
green_max_size                  = 0
green_desired_capacity          = 0
green_wait_for_capacity_timeout = 0
