resource "google_storage_bucket" "bucket" {
  name                        = var.name
  project                     = var.pid
  location                    = var.location
  force_destroy               = var.fd
  storage_class               = var.sc
  uniform_bucket_level_access = var.ubla

  versioning {
    enabled = var.venabled
  }

  labels = var.labels
}
