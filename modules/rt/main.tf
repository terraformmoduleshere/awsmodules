resource "aws_route_table" "rt" {
  vpc_id = var.rt-vpcid
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.rt-igid
  }
  tags = {
    Name = "public-rt-terraformvpc"
  }
}