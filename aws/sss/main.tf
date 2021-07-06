resource "aws_s3_bucket" "bucket" {
  bucket        = var.name
  acl           = var.acl
  force_destroy = var.fd

  versioning {
    enabled = var.venabled
  }

  tags = merge({ Name = "${var.name}" }, var.tags)
}
