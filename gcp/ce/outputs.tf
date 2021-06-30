output "instance_id" {
  value       = google_compute_instance.instance.instance_id
  description = "ID of the  instance"
}

output "public_ip" {
  value       = var.pip ? google_compute_instance.instance.network_interface.0.access_config.0.nat_ip : "Public IP disable"
  description = "Public IP"
}
