resource "azurerm_windows_virtual_machine" "example" {
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  size                = var.vm_size
  computer_name       = var.computer_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = var.vm_ni_id

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}