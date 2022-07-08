
output "public-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "private-ip" {
  value = aws_instance.myawsserver.private_ip
}
