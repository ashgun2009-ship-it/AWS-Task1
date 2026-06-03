variable "aws_region" {
  type        = string
  description = "The AWS region where all regional resources will be created."
}

variable "vpc_name" {
  type        = string
  description = "The name tag for the Virtual Private Cloud (VPC)."
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block configuration for the AWS VPC."
}

# Підмережа 1
variable "subnet1_name" {
  type        = string
  description = "The name tag for the first public subnet."
}

variable "availability_zone1" {
  type        = string
  description = "The AWS Availability Zone for the first public subnet."
}

variable "subnet1_cidr" {
  type        = string
  description = "The CIDR block for the first public subnet."
}

# Підмережа 2
variable "subnet2_name" {
  type        = string
  description = "The name tag for the second public subnet."
}

variable "availability_zone2" {
  type        = string
  description = "The AWS Availability Zone for the second public subnet."
}

variable "subnet2_cidr" {
  type        = string
  description = "The CIDR block for the second public subnet."
}

# Підмережа 3
variable "subnet3_name" {
  type        = string
  description = "The name tag for the third public subnet."
}

variable "availability_zone3" {
  type        = string
  description = "The AWS Availability Zone for the third public subnet."
}

variable "subnet3_cidr" {
  type        = string
  description = "The CIDR block for the third public subnet."
}

# Інші ресурси
variable "internet_gateway" {
  type        = string
  description = "The name tag for the AWS Internet Gateway."
}

variable "routing_table" {
  type        = string
  description = "The name tag for the public Route Table."
}