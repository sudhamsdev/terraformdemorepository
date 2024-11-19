resource "aws_route_table" "public_table" {
  vpc_id = aws_vpc.demo_vpc.id

  tags = merge(
    local.common_tags,
    {
      "Name" = "public_route_table"
    }
  )
}

resource "aws_route_table" "private_table" {
  vpc_id = aws_vpc.demo_vpc.id

  tags = merge(
    local.common_tags,
    {
      "Name" = "private_route_table"
    }
  )
}