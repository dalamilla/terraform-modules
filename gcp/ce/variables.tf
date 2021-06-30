variable "name" {
  type        = string
  description = "Name of the intance"
}

variable "pid" {
  type        = string
  description = "Project ID of the intance"
}

variable "mt" {
  type        = string
  description = "Machine Type of the intance"
}

variable "zon" {
  type        = string
  description = "Zone of the intance"
}

variable "img" {
  type        = string
  description = "Image of the intance"
}

variable "network" {
  type        = string
  description = "Network name of the intance"
}

variable "subnet" {
  type        = string
  description = "Subnetwork name of the intance"
}

variable "subnet_pid" {
  type        = string
  description = "Project ID of the subnetwork of the intance"
}

variable "sip" {
  type        = string
  description = "Subnet IP of the intance"
}

variable "pip" {
  default     = false
  type        = bool
  description = "Enable public IP in the instance"
}

variable "meta" {
  type        = map(string)
  description = "Metadata of the intance"
}

variable "tags" {
  type        = list(string)
  description = "Tags of the intance"
}
