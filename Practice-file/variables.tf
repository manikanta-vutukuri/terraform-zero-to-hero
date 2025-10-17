variable "aws_region" {
  description = "Select the valid region availaible in our az"
  type = string
  default = "us-east-2"
}

variable "instance_type" {
  description = "Instance_variable"
  type = string
  default = "t3.micro"
}

variable "project" {
  description = "Project name / prefix"
  type        = string
  default     = "enterprise-demo"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
}

variable "ami_value" {
  type = string
}

# variable "subnet_id" {
#   type = string
# }