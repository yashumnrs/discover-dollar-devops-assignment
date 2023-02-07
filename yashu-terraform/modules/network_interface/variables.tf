variable "network_interface_name" {
  type = string
}

variable "network_interface_location" {
  type = string
}

variable "network_interface_rg" {
  type = string
}

variable "ni_ip_config_name" {
  type = string
}

variable "snet_id" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string
  default = "Dynamic"
}