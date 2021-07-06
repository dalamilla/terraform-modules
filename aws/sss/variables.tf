variable "name" {
  type        = string
  description = "Name of the simple storage service"
}

variable "acl" {
  default     = "private"
  type        = string
  description = "ACL of the simple storage service"
}

variable "fd" {
  default     = false
  type        = bool
  description = "Force destroy of the simple storage service"
}

variable "venabled" {
  default     = false
  type        = bool
  description = "Versioning enabled of the simple storage service"
}

variable "tags" {
  type        = map(string)
  description = "Tags of the simple storage service"
}
