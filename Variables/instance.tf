# Resource Block
resource "aws_instance" "public_instance" {
  # Arguments
  # count = 1 #Index value 0, 1, 2
  # for_each      = toset(["t2.micro", "t2.medium", "t2.small", "t2.large"])
  ami           = var.ami_id #"ami-06b21ccaeff8cd686" #"ami-0866a3c8686eaeeba"
  instance_type = var.size
  key_name      = var.ssh_key_pair

  tags = merge(
    var.instance_tags,
    local.common_tags
  )
}