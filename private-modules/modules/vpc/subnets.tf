resource "aws_subnet" "public_subnets" {
  count             = length(local.public_subnets)
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = element(values(local.public_subnets), count.index)
  availability_zone = element(keys(local.public_subnets), count.index)
}

resource "aws_subnet" "private_subnets" {
  count             = length(local.private_subnets)
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = element(values(local.private_subnets), count.index)
  availability_zone = element(keys(local.private_subnets), count.index)
}