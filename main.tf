provider "aws" {
  version = "~> 3.0"
  region  = var.region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

module "EC2" {
  source = "./modules/EC2"
  subnet = "module.VPC.subnet_id"
}

module "VPC" {
  source = "./modules/VPC"
}

module "S3" {
  source = "./modules/S3"
}
