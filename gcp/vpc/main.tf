resource "google_compute_network" "network" {
  name                            = var.name
  project                         = var.pid
  auto_create_subnetworks         = var.acs
  routing_mode                    = var.rm
  mtu                             = var.mtu
  delete_default_routes_on_create = var.ddroc
}

locals {
  subnets = {
    for x in var.subnetworks :
    "${x.name}" => x
  }
}

resource "google_compute_subnetwork" "subnetworks" {
  for_each      = local.subnets
  name          = each.value.name
  region        = each.value.region
  ip_cidr_range = each.value.ipcdrr
  network       = google_compute_network.network.id
  project       = var.pid
}
