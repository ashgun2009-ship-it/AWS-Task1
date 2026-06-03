output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the created VPC."
}

output "public_subnet_ids" {
  value = [
    aws_subnet.subnet1.id,
    aws_subnet.subnet2.id,
    aws_subnet.subnet3.id
  ]
  description = "List of IDs of the created public subnets."
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "The ID of the attached Internet Gateway."
}

output "route_table_id" {
  value       = aws_route_table.public_rt.id
  description = "The ID of the public Route Table."
}