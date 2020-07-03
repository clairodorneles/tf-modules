#
# Module to create NSG
#


resource "azurerm_network_security_group" "nsg" {
  name                = var.nsgName
  location            = var.location
  resource_group_name = var.rgName
  tags                = var.tags
}