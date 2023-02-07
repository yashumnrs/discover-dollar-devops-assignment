variable "vm_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "vm_ni_id" {
  type = list(string)
}

variable "computer_name" {
  type = string
}