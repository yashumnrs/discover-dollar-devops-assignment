# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "fa994528-d08f-4ce3-a4c5-c542413a9190"
  client_id       = "dd33ddee-3f21-46d2-aed0-7d8f53ab5aec"
  client_secret   = "PSg8Q~vOcCIPo_rG-sAWNxHSkoAOq.2wxAqCUdpL"
  tenant_id       = "c885084d-b2c7-467c-a70d-c77d0733a009"
}

#creating a resource group
module "eus_resoure_group" {
  source           = "./modules/resource_group"
  eus_rg_name_list = [
    element(var.eus_rg_name_list, 0)
  ]
  eus_rg_location  = [
    element(var.eus_rg_location, 0)
  ]
}

//Creating Virtual Network.
module "eus_v_net" {
  source   = "./modules/virtual_network"
  vnet_name            = var.vnet_name 
  vnet_location        = element(var.eus_rg_location, 0)
  vnet_rg              = element(module.eus_resoure_group.name, 0)
  vnet_address_space   = var.vnet_address_space
  snet_name        = var.snet_name
  snet_address_space = var.snet_address_space
}

//Creating Network Interface
module "eus_ni" {
  source   = "./modules/network_interface"
  network_interface_name = var.network_interface_name
  network_interface_location = element(var.eus_rg_location, 0)
  network_interface_rg = element(module.eus_resoure_group.name, 0)
  ni_ip_config_name = var.ni_ip_config_name
  snet_id = element(module.eus_v_net.id, 0)
}

//Creating Virtual Machine
module "eus_win_vm" {
  source   = "./modules/virtual_machine"
  vm_name = var.vm_name
  rg_name = element(module.eus_resoure_group.name, 0)
  rg_location = element(var.eus_rg_location, 0)
  vm_size = var.vm_size
  computer_name = var.computer_name
  admin_username = var.admin_username
  admin_password = var.admin_password
  vm_ni_id = [
    element(module.eus_ni.id, 0),
  ]
}