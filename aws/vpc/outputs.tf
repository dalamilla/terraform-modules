output "network" {
  value       = aws_vpc.network
  description = "Network definition"
}

output "subnetwork" {
  value       = aws_subnet.subnetworks
  description = "Subnetworks definition"
}
