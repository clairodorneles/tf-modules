#
# Subnet Module
#

resource "azurerm_subnet" "subnet" {
  name                 = var.snetName
  resource_group_name  = var.rgName
  virtual_network_name = var.vnetName
  address_prefixes     = var.address_prefix
}
