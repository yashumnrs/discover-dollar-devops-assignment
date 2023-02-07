variable "vnet_name" {
  type = string
}

variable "vnet_location" {
  type = string
}

variable "vnet_rg" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "snet_address_space" {
  type = string
}

variable "snet_name" {
  type = string
}