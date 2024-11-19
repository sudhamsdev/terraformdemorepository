resource "aws_eip" "nat_ip" {
  tags = merge(
    local.common_tags,
    {
      "Name" = "Nat_public_address"
    }
  )
}

resource "aws_nat_gateway" "public_nat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public_subnets.0.id

  depends_on = [aws_eip.nat_ip]

  tags = merge(
    local.common_tags,
    {
      "Name" = "public_nat_network"
    }
  )
}