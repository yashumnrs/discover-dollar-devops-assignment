variable "eus_rg_name_list" {
  type = list(string)
}

variable "eus_rg_location" {
  type = list(string)
}

variable "tags" {
  type = map(string)
  default   = {
  }
}