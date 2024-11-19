resource "aws_vpc" "demo_vpc" {
  cidr_block       = "10.200.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Development"
  }
}