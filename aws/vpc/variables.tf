variable "name" {
  type        = string
  description = "Name of the vpc"
}

variable "cidrb" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "ednss" {
  default     = true
  type        = bool
  description = "Enable DNS support"
}

variable "ednsh" {
  default     = true
  type        = bool
  description = "Enable DNS hostnames"
}

variable "subnetworks" {
  type        = list(map(string))
  description = "A list of Subnetworks"
}
