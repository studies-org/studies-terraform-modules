#-----------------------
# EC2 Instance Variables
#-----------------------

variable "name" {
  description = "The name of the EC2 instance."
  type        = string
}

variable "env" {
  description = "The environment for the EC2 instance (e.g., dev, prod)."
  type        = string
}

variable "project" {
  description = "The project name for the EC2 instance."
  type        = string
}

variable "tag_team" {
  description = "The team tag to assign to the EC2 instance."
  type        = string
}

variable "tag_cc" {
  description = "The cost center tag to assign to the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = true
}


#-------------------------
# Security Group Variables
#-------------------------

variable "vpc_id" {
    description = "The VPC ID where the security group will be created."
    type        = string
}

variable "subnet_id" {
    description = "The Subnet ID where the EC2 instance will be launched."
    type        = string
}

variable "vpc_cidr" {
    description = "The CIDR block for the VPC."
    type        = string
}

