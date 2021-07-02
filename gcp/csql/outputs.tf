output "public_ip_address" {
  value       = google_sql_database_instance.instance.public_ip_address
  description = "Public IP address of the cloud sql instance"
}

output "connection_name" {
  value       = google_sql_database_instance.instance.connection_name
  description = "Connection name of the cloud sql instance"
}
