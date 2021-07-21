variable "name" {
  type        = string
  description = "Name of the intance"
}

variable "ami" {
  type        = string
  description = "AMI of the intance"
}

variable "it" {
  type        = string
  description = "Type of the intance"
}

variable "epip" {
  default     = true
  type        = bool
  description = "Enable public IP of the intance"
}

variable "subn" {
  type        = string
  description = "Subnet name to connect the intance"
}

variable "sip" {
  type        = string
  description = "Subnet IP of the intance"
}

variable "vsi" {
  type        = number
  description = "Volumen size (GB) of the root block on the intance"
}

variable "vt" {
  default     = "standard"
  type        = string
  description = "Volumen type of the root block on the intance"
}

variable "cpuc" {
  default     = "standard"
  type        = string
  description = "CPU credits of the intance"
}
