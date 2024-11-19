resource "aws_internet_gateway" "public_access" {
  vpc_id = aws_vpc.demo_vpc.id

  tags = merge(
    local.common_tags,
    {
      "Name" = "public-access-gateway"
    }
  )
}