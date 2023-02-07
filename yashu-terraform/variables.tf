variable "eus_rg_name_list" {
  type = list(string)
  default = [
    "rg-yashu-proj-vm"
  ]
}

variable "eus_rg_location" {
  type = list(string)
  default = [
    "eastus"
  ]
}

variable "tags" {
  type = map(string)
  default   = {
  }
}

variable "vnet_name" {
  type = string
  default = "yashu-proj-vnet"
}

variable "vnet_address_space" {
  type = list(string)
  default = [
     "10.0.0.0/16"
  ]
}

variable "snet_name" {
  type = string
  default = "default"
}

variable "snet_address_space" {
  type = string
  default = "10.0.0.0/16"
}

variable "network_interface_name" {
  type = string
  default = "yashu-proj-networkinterface"
}

variable "ni_ip_config_name" {
  type = string
  default = "testingconfig"
}

variable "vm_name" {
  type = string
  default = "yashu-windoes-vm"
}

variable "vm_size" {
  type = string
  default = "Standard_F2"
}

variable "admin_username" {
  type = string
  default = "azureadmin"
}

variable "admin_password" {
  type = string
  default = "Yashu@123"
}

variable "computer_name" {
  type = string
  default = "reportserverprd"
}