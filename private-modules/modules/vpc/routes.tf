resource "aws_route" "igw_route" {
  gateway_id             = aws_internet_gateway.public_access.id
  route_table_id         = aws_route_table.public_table.id
  destination_cidr_block = "0.0.0.0/0"

  depends_on = [aws_route_table.public_table, aws_internet_gateway.public_access]
}

resource "aws_route" "nat_route" {
  nat_gateway_id         = aws_nat_gateway.public_nat.id
  route_table_id         = aws_route_table.private_table.id
  destination_cidr_block = "0.0.0.0/0"

  depends_on = [aws_route_table.private_table, aws_nat_gateway.public_nat]
}