resource "google_sql_database_instance" "instance" {
  name                = var.name
  database_version    = var.dbv
  region              = var.reg
  project             = var.pid
  deletion_protection = var.delp

  settings {
    tier              = var.tier
    disk_size         = var.ds
    disk_type         = var.dt
    availability_type = var.at
  }
}
