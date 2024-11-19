# Output Block
output "public_ip" {
    value = aws_instance.public_instance.public_ip
    description = "Print public IP address of the EC2 Instance"
}

output "private_ip" {
    value = aws_instance.public_instance.private_ip
    description = "Print private IP address of the EC2 Instance"
}