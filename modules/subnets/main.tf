resource "aws_subnet" "subnet" {
  count = var.subnets-number
  cidr_block = "10.0.${count.index + 1}.0/24"
  vpc_id = var.subnets-vpcid
#  availability_zone = var.subnets-subnet1zone
}
resource "aws_route_table_association" "subnetassociation" {
  count = var.subnets-number
  route_table_id = var.subnets-rtid
  subnet_id = aws_subnet.subnet[count.index].id
}