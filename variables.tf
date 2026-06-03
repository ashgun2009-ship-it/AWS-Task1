variable "aws_region" {
  type        = string
  description = "AWS region for infrastructure deployment"
}

variable "vpc_name" {
  type        = string
  description = "The name tag for the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "subnet1_name" {
  type        = string
  description = "The name tag for public subnet A"
}

variable "availability_zone1" {
  type        = string
  description = "The availability zone for public subnet A"
}

variable "subnet1_cidr" {
  type        = string
  description = "The CIDR block for public subnet A"
}

variable "subnet2_name" {
  type        = string
  description = "The name tag for public subnet B"
}

variable "availability_zone2" {
  type        = string
  description = "The availability zone for public subnet B"
}

variable "subnet2_cidr" {
  type        = string
  description = "The CIDR block for public subnet B"
}

variable "subnet3_name" {
  type        = string
  description = "The name tag for public subnet C"
}

variable "availability_zone3" {
  type        = string
  description = "The availability zone for public subnet C"
}

variable "subnet3_cidr" {
  type        = string
  description = "The CIDR block for public subnet C"
}

variable "internet_gateway" {
  type        = string
  description = "The name tag for the Internet Gateway"
}

variable "routing_table" {
  type        = string
  description = "The name tag for the public Route Table"
}