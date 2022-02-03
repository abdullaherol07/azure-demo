resource "azurerm_virtual_network" "demovnet" {
  name                = "demovnet"
  location            = azurerm_resource_group.Westeurope.location
  resource_group_name = azurerm_resource_group.demo.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

resource "azurerm_subnet" "public1" {
  name                 = "public1-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
  

resource "azurerm_subnet" "public2" {
  name                 = "public2-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

  resource "azurerm_subnet" "public3" {
  name                 = "public3-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.3.0/24"]
  }

resource "azurerm_subnet" "private1" {
  name                 = "private1-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.101.0/24"]
}

resource "azurerm_subnet" "private2" {
  name                 = "private2-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.102.0/24"]
}

resource "azurerm_subnet" "private3" {
  name                 = "private3-subnet"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demovnet.name
  address_prefixes     = ["10.0.103.0/24"]
}
