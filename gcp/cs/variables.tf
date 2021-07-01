variable "name" {
  type        = string
  description = "Name of the storage bucket"
}

variable "pid" {
  type        = string
  description = "Project ID of the storage bucket"
}

variable "location" {
  default     = "US"
  type        = string
  description = "Location of the storage bucket"
}

variable "fd" {
  default     = false
  type        = bool
  description = "Force destroy of the storage bucket"
}

variable "sc" {
  default     = "STANDARD"
  type        = string
  description = "Storage class of the storage bucket"
}

variable "ubla" {
  default     = false
  type        = bool
  description = "Uniform Bucket Level Access of the storage bucket"
}

variable "venabled" {
  default     = false
  type        = bool
  description = "Versioning enabled on the storage bucket"
}

variable "labels" {
  type        = map(string)
  description = "Labels of the storage bucket"
}
