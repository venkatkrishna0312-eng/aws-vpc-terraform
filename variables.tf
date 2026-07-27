variable "aws_region" {
  description = "AWS Region where resources will be created"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "pub_subnet_cidr" {

  description = "CIDR block for the public subnet"
  type        = string

}

variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = string
}

variable "private_subnet_cidr" {

  description = "CIDR block for the private subnet"
  type        = string
}