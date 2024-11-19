resource "aws_vpc" "demo_vpc" {
  cidr_block = var.vpc_cidr

  tags = merge(
    var.vpc_tags,
    local.common_tags
  )
}