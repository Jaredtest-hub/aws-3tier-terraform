
variable "project_name" {
  description = "Name prefix used for AWS resources"
  type        = string
  default     = "jared-3tier"
}

variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the project VPC"
  type        = string
  default     = "10.40.0.0/16"
}

variable "availability_zones" {
  description = "Availability Zones used by the project"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "instance_type" {
  description = "EC2 instance type for application servers"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID"
  type        = string
  default     = null
}

variable "db_username" {
  description = "Master username for the  RDS database"
  type        = string
  default     = "dbadmin"
}

variable "db_password" {
  description = "Master password for the RDS database"
  type        = string
  default     = true
  nullable    = false
}