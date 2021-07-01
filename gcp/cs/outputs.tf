output "bucket_self_link" {
  value       = google_storage_bucket.bucket.self_link
  description = "Self link of the storage bucket"
}

output "bucket_url" {
  value       = google_storage_bucket.bucket.url
  description = "URL  of the storage bucket"
}
