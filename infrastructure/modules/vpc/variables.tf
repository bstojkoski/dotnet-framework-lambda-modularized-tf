variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default     = "eu-west-1a"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  type        = string
  default     = "private-subnet"
}

variable "internet_gateway_name" {
  description = "The name of the internet gateway"
  type        = string
  default     = "main-igw"
}

variable "public_route_table_name" {
  description = "The name of the public route table"
  type        = string
  default     = "public-route-table"
}

variable "private_route_table_name" {
  description = "The name of the private route table"
  type        = string
  default     = "private-route-table"
}
