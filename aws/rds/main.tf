resource "aws_db_instance" "instance" {
  identifier        = var.name
  instance_class    = var.insc
  engine            = var.eng
  engine_version    = var.engv
  allocated_storage = var.alst
  storage_type      = var.st

  name                = var.dbname
  username            = var.dbuser
  password            = var.dbpass

  deletion_protection = var.dprot
  publicly_accessible = var.pacc
  skip_final_snapshot = var.sfs

  tags = {
    Name = var.name
  }

}
