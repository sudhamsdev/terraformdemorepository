# Resource Block
resource "aws_instance" "public_instance" {
  # Arguments
  count = 1 #Index value 0, 1, 2
  #for_each      = toset(["t2.micro", "t2.medium", "t2.small", "t2.large"])
  ami           = "ami-0866a3c8686eaeeba" #"ami-06b21ccaeff8cd686" #"ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name      = "virgina-key"

  # Nested Block
  lifecycle {
    #prevent_destroy = true
    #ignore_changes = [ instance_type, key_name ]
    create_before_destroy = true
  }

  tags = {
    Name = "PublicInstance-${count.index}"
  }
}