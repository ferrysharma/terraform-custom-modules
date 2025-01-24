output "dynamodb_table_arn" {

  value = module.dynamodb.dynamodb_table_arn
}
output "vpc_id" {

  value = module.networking.vpc_id
}
output "subnet_id" {   

  value = module.networking.subnet_id
}
output "instance_id" {

  value = module.ec2.instance_id
}
output "bucket_arn" {

  value = module.s3.bucket_arn
}