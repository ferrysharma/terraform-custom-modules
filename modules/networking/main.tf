resource "aws_vpc" "main_vpc" {

  cidr_block = var.cidr_block
}
resource "aws_subnet" "main_subnet" {

  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = var.map_public_ip_on_launch

}