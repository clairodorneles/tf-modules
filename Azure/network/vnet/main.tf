#
# Virtual Network
#

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetName
  location            = var.location
  resource_group_name = var.rgName
  address_space       = var.address_space
  tags                = var.tags
}