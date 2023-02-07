resource "azurerm_network_interface" "ni" {
  name                = var.network_interface_name
  location            = var.network_interface_location
  resource_group_name = var.network_interface_rg

  ip_configuration {
    name                          = var.ni_ip_config_name
    subnet_id                     = var.snet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}