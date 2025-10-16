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