output "public_dns" {
  value       = aws_instance.instance.public_dns
  description = "Public DNS"
}

output "public_ip" {
  value       = aws_instance.instance.public_ip
  description = "Public IP"
}

output "availability_zone" {
  value       = aws_instance.instance.availability_zone
  description = "Availability zone"
}
