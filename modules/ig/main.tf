resource "aws_internet_gateway" "vpcig" {
  vpc_id = var.ig-vpcid
  tags = {
    Name = "terraformvpcig"
  }
}