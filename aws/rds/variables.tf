variable "name" {
  type        = string
  description = "Identifier of the db intance"
}

variable "insc" {
  type        = string
  description = "Class of the db intance"
}

variable "eng" {
  type        = string
  description = "Engine of the db intance"
}

variable "engv" {
  type        = string
  description = "Engine version of the db intance"
}

variable "alst" {
  default     = 20
  type        = number
  description = "Allocate storage of the db intance"
}

variable "st" {
  default     = "gp2"
  type        = string
  description = "Storage type of the db intance"
}

variable "dbname" {
  type        = string
  description = "Name of the db intance"
}

variable "dbuser" {
  type        = string
  description = "User of the db intance"
}

variable "dbpass" {
  type        = string
  description = "Password of the db intance"
}

variable "dprot" {
  default     = true
  type        = bool
  description = "Deletion protection of the db intance"
}

variable "pacc" {
  default     = false
  type        = bool
  description = "Publicly accessible of the db intance"
}

variable "sfs" {
  default     = false
  type        = bool
  description = "Skip final snapshot of the db intance"
}
