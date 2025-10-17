locals {
  name_prefix = "${var.project}-${var.environment}"
}

module "ec2" {
  source = "./modules/ec2"
  ami_value = var.ami_value
  instance_type_value = var.instance_type
  tags = {
    Name = "${local.name_prefix}-ec2-instance"
    Environment = var.environment
    Project = var.project
  }
}

module "s3" {
  source = "./modules/s3"
  project = var.project
  environment = var.environment
  region = var.aws_region
}

