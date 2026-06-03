aws_region = "eu-west-1"
vpc_name   = "cmtr-o3e0v1ec-01-vpc"
vpc_cidr   = "10.10.0.0/16"

subnet1_name       = "cmtr-o3e0v1ec-01-subnet-public-a"
availability_zone1 = "eu-west-1a"
subnet1_cidr       = "10.10.1.0/24"

subnet2_name       = "cmtr-o3e0v1ec-01-subnet-public-b"
availability_zone2 = "eu-west-1b"
subnet2_cidr       = "10.10.3.0/24"

subnet3_name       = "cmtr-o3e0v1ec-01-subnet-public-c"
availability_zone3 = "eu-west-1c"
subnet3_cidr       = "10.10.5.0/24"

internet_gateway = "cmtr-o3e0v1ec-01-igw"
routing_table    = "cmtr-o3e0v1ec-01-rt"