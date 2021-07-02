variable "name" {
  type        = string
  description = "Name of the cloud sql instance"
}

variable "dbv" {
  type        = string
  description = "Database Version of the cloud sql instance"
}

variable "reg" {
  type        = string
  description = "Region of the cloud sql instance"
}

variable "pid" {
  type        = string
  description = "Project ID of the cloud sql instance"
}

variable "delp" {
  default     = true
  type        = bool
  description = "Deletion Protection enabled of the cloud sql instance"
}

variable "tier" {
  type        = string
  description = "Tier  of the cloud sql instance"
}

variable "ds" {
  default     = 10
  type        = number
  description = "Disk size (GB) of the cloud sql instance"
}

variable "dt" {
  default     = "PD_SSD"
  type        = string
  description = "Disk Type of the cloud sql instance"
}

variable "at" {
  type        = string
  description = "Availability type of the cloud sql instance"
}
