variable bucket_name {
    default =  "ferry-bucket-22"
}
variable "vpc_id" {
  default = null # Replace with your actual VPC ID
}
variable "cidr_block" {
  default = "10.0.1.0/24" # Example CIDR block
}

variable "map_public_ip_on_launch" {
  default = true # Set to false if you don't want public IPs
}

variable "instance_type" {
  default = "t2.micro" # Common free-tier eligible instance type
}

variable "ami_id" {
  default = "ami-036841078a4b68e14" # Replace with the desired AMI ID
}

variable "key_name" {
  default = "batch-7-key" # Replace with your key pair name
}

variable "subnet_id" {
  default = "10.0.0.0/16" # Replace with your actual subnet ID
}

variable "table_name" {
  default = "ferry-dynamodb-table" # Replace with your DynamoDB table name
}

variable "read_capacity" {
  default = 5 # Set appropriate read capacity for DynamoDB
}

variable "write_capacity" {
  default = 5 # Set appropriate write capacity for DynamoDB
}