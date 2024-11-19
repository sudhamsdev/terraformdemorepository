resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.demo_vpc.id #Calling attributes
  cidr_block        = "10.200.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "PublicSubnet01"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.demo_vpc.id #Calling attributes
  cidr_block        = "10.200.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "PrivateSubnet01"
  }
}