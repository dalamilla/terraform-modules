output "network" {
  value       = google_compute_network.network
  description = "Network definition"
}

output "subnetwork" {
  value       = google_compute_subnetwork.subnetworks
  description = "Subnetworks definition"
}
