resource "aws_route_table_association" "public_rt_assoc" {
  count          = length(local.public_subnets)
  subnet_id      = element(aws_subnet.public_subnets.*.id, count.index)
  route_table_id = aws_route_table.public_table.id
}

resource "aws_route_table_association" "private_rt_assoc" {
  count          = length(local.private_subnets)
  subnet_id      = element(aws_subnet.private_subnets.*.id, count.index)
  route_table_id = aws_route_table.private_table.id
}