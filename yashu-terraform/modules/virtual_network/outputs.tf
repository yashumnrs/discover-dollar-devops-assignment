output "name" {
  value = azurerm_virtual_network.vnet.*.name
}

output "id" {
  value = azurerm_virtual_network.vnet.subnet.*.id
}

output "endpoint_id" {
  value = azurerm_virtual_network.vnet.*.id
}