#Create Resource Group for the VM
resource "azurerm_resource_group" Demo" {
  name     = var.name
  location = var.location
}

resource "azurerm_virtual_network" "vnet01" {
  name                = "vnet01"
  resource_group_name = var.resource_group
  location            = var.location
  address_space       = [var.vnetcidr]