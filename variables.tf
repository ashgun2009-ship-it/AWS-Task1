variable "aws_region" {
  type        = string
  description = "Регіон для розгортання інфраструктури"
}

variable "vpc_name" {
  type        = string
  description = "Назва нашої VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR блок для VPC"
}

variable "subnet1_name" {
  type        = string
  description = "Назва першої підмережі"
}

variable "availability_zone1" {
  type        = string
  description = "Зоня доступності для першої підмережі"
}

variable "subnet1_cidr" {
  type        = string
  description = "CIDR блок для першої підмережі"
}

variable "subnet2_name" {
  type        = string
  description = "Назва другої підмережі"
}

variable "availability_zone2" {
  type        = string
  description = "Зоня доступності для другої підмережі"
}

variable "subnet2_cidr" {
  type        = string
  description = "CIDR блок для другої підмережі"
}

variable "subnet3_name" {
  type        = string
  description = "Назва третьої підмережі"
}

variable "availability_zone3" {
  type        = string
  description = "Зоня доступності для третьої підмережі"
}

variable "subnet3_cidr" {
  type        = string
  description = "CIDR блок для третьої підмережі"
}

variable "internet_gateway" {
  type        = string
  description = "Назва інтернет-шлюзу"
}

variable "routing_table" {
  type        = string
  description = "Назва таблиці маршрутизації"
}