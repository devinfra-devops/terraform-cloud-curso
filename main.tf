provider "aws" {
  version = "~> 3.0"
  region  = var.region
}

module "EC2" {
  source = "git::https://github.com/devinfra-br/terraform-modules.git//modules/ec2"
}

module "VPC" {
  source = "git::https://github.com/devinfra-br/terraform-modules.git//modules/vpc"
}

module "S3" {
  source = "git::https://github.com/devinfra-br/terraform-modules.git//modules/s3"
}
