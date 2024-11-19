# Resource Block
resource "aws_instance" "public_instance" {
  # Arguments
  count         = 1
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.size
  key_name      = var.ssh_key_pair

  tags = {
    Name          = "PublicInstance-${count.index}"
    "Environment" = "${terraform.workspace}"
  }
}