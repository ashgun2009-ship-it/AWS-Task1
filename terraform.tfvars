aws_region         = "eu-west-1"
vpc_name           = "production-vpc"
vpc_cidr           = "10.0.0.0/16"

subnet1_name       = "public-subnet-1"
availability_zone1 = "eu-west-1a"
subnet1_cidr       = "10.0.1.0/24"

subnet2_name       = "public-subnet-2"
availability_zone2 = "eu-west-1b"
subnet2_cidr       = "10.0.2.0/24"

subnet3_name       = "public-subnet-3"
availability_zone3 = "eu-west-1c"
subnet3_cidr       = "10.0.3.0/24"

internet_gateway   = "main-internet-gateway"
routing_table      = "public-route-table"