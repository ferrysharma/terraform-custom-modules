terraform {
  
  required_providers {
    aws = {      
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {

  region = "us-east-2"
}
module "dynamodb" {
  
  source       = "../modules/dynamodb"
  table_name   = var.table_name
  read_capacity = var.read_capacity
  write_capacity = var.write_capacity
}
module "ec2" {

  source           = "../modules/ec2"
  instance_type    = var.instance_type
  ami_id           = var.ami_id
  key_name = var.key_name
  subnet_id = module.networking.subnet_id
}
module "networking" {

  source = "../modules/networking"
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
}
module "s3" {

  source      = "../modules/s3"
  bucket_name = var.bucket_name
}




