variable "name" {
  type        = string
  description = "Name of the network"
}

variable "pid" {
  type        = string
  description = "Id of the project"
}

variable "acs" {
  default     = true
  type        = bool
  description = "Auto create subnetworks"
}

variable "rm" {
  default     = "REGIONAL"
  type        = string
  description = "Routing mode"
}

variable "mtu" {
  default     = 1460
  type        = number
  description = "Maximum Transfer Unit"
}

variable "ddroc" {
  default     = false
  type        = bool
  description = "Delete default routes on create"
}

variable "subnetworks" {
  type        = list(map(string))
  description = "A list of Subnetworks"
}
