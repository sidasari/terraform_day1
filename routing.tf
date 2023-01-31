resource "aws_route_table" "terraformrt" {
  vpc_id = aws_vpc.MYVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
  tags = {
    Name = "${var.vpc_name}-Public-RT"
  }
}

resource "aws_route_table_association" "terraform-public-1" {
  subnet_id      = aws_subnet.subnet1_public.id
  route_table_id = aws_route_table.terraformrt.id
}
resource "aws_route_table_association" "terraform-public-2" {
  subnet_id      = aws_subnet.subnet2_public.id
  route_table_id = aws_route_table.terraformrt.id
}
resource "aws_route_table_association" "terraform-public-3" {
  subnet_id      = aws_subnet.subnet3_public.id
  route_table_id = aws_route_table.terraformrt.id
}