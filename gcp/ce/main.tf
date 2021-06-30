resource "google_compute_instance" "instance" {
  name         = var.name
  project      = var.pid
  machine_type = var.mt
  zone         = var.zon

  boot_disk {
    initialize_params {
      image = var.img
    }
  }

  network_interface {
    network            = var.network
    subnetwork         = var.subnet
    subnetwork_project = var.subnet_pid
    network_ip         = var.sip

    dynamic "access_config" {
      for_each = var.pip ? [1] : []
      content {

      }
    }
  }

  metadata = var.meta

  tags = var.tags
}
