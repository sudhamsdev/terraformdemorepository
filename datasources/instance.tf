# Resource Block
resource "aws_instance" "public_instance" {
  # Arguments
  count         = 3
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.size
  key_name      = var.ssh_key_pair

  tags = {
    Name = "PublicInstance-${count.index}"
  }
}