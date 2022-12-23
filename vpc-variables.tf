variable "vpc_name" {
    description = "VPC Name"
    type = string
    default = "vpc"
}

variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
    description = "VPC Availability Zones"
    type = list(string)
    default = ["us-east-1a","us-east-1b"]
}

variable "vpc_public_subnets" {
    description = "VPC Public Subnets"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
    description = "VPC Private Subnets"
    type = list(string)
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "vpc_enable_nat_gateway" {
    description = "Enable NAT Gateway for private Subnets"
    type = bool
    default = true
}

variable "vpc_single_nat_gateway" {
    description = ""
    type = bool
    default = true
}