resource "aws_instance" "ferry_instance" {
  
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id = var.subnet_id

  tags = {
    Name = "ferry_instance"
  }
}


