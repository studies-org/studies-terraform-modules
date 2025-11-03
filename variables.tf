#------------------------------
# William Instance Values Variables
#------------------------------

variable "instance_name" {
  description = "The instance name."
  type        = string
  default     = "ec2"
}

variable "env" {
  description = "The environment for the EC2 instance."
  type        = string
  default     = "prod"
}

variable "project" {
  description = "The project name for the EC2 instance."
  type        = string
  default     = "corpwork"
}

variable "tag_team" {
  description = "The team tag to assign to the EC2 instance."
  type        = string
  default     = "devops"
}

variable "tag_cc" {
  description = "The cost center tag to assign to the EC2 instance."
  type        = string
  default     = "cc001"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  default     = "ami-02e136e904f3da870"
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
  default     = "william-key"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch the instance in."
  type        = string
  default     = "subnet-abcdef12"
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instance."
  type        = list(string)
  default     = ["sg-abcdef12"]
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = true
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to associate with the instance."
  type        = string
  default     = "william-iam-profile"
}

variable "user_data" {
  description = "The user data to provide when launching the instance."
  type        = string
  default     = "#!/bin/bash\necho 'Hello, William!' > /var/www/html/index.html"
}


#----------------
# Instance Web-01
#----------------

variable "vm_name_web_01" {
  description = "The instance name."
  type        = string
  default     = "web-01-ec2"
}

variable "vm_type_web_01" {
  description = "The instance type."
  type        = string
  default     = "t3.micro"
}

variable "vm_env_web_01" {
  description = "The instance environment."
  type        = string
  default     = "dev"
}

#----------------
# Instance Web-02
#----------------


variable "vm_name_web_02" {
  description = "The instance name."
  type        = string
  default     = "web-02-ec2"
}

variable "vm_type_web_02" {
  description = "The instance type."
  type        = string
  default     = "t2.micro"
}

variable "vm_env_web_02" {
  description = "The instance environment."
  type        = string
  default     = "hml"
}


#----------------
# Instance Web-03
#----------------

variable "vm_name_web_03" {
  description = "The instance name."
  type        = string
  default     = "web-03-ec2"
}

variable "vm_type_web_03" {
  description = "The instance type."
  type        = string
  default     = "t2.micro"
}

variable "vm_env_web_03" {
  description = "The instance environment."
  type        = string
  default     = "prd"
}


#----------------
# Instance Web-04
#----------------

variable "vm_name_web_04" {
  description = "The instance name."
  type        = string
  default     = "web-04-ec2"
}

variable "vm_type_web_04" {
  description = "The instance type."
  type        = string
  default     = "t3.micro"
}

variable "vm_env_web_04" {
  description = "The instance environment."
  type        = string
  default     = "prd"
}



