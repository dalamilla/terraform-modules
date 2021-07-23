output "db_address" {
  value       = aws_db_instance.instance.address
  description = "Hostname of the db instance"
}

output "db_endpoint" {
  value       = aws_db_instance.instance.endpoint
  description = "Connection endpoint of the db instance in address:port format"
}
