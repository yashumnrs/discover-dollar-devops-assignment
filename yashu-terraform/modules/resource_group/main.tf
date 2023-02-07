resource "azurerm_resource_group" "rg" {
  count    = length(var.eus_rg_name_list)
  name     = element(var.eus_rg_name_list, count.index)
  location = element(var.eus_rg_location, count.index)
  tags     = var.tags
}