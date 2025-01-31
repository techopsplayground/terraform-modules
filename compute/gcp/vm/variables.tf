variable "name" {
  description = "Name of the VM"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the VM"
  type        = string
}

variable "image" {
  description = "OS image for the VM"
  type        = string
}

variable "network" {
  description = "Network for the VM"
  type        = string
  default     = "default"
}

variable "tags" {
  description = "Tags for the VM"
  type        = list(string)
  default     = []
}
  