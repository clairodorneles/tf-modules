#
# Module to create Public IP
#

resource "azurerm_public_ip" "pip" {
  name                = var.pipName
  resource_group_name = var.rgName
  location            = var.location
  sku                 = var.sku
  allocation_method   = var.aMeth
  domain_name_label   = var.fqdn
  tags                = var.tags
}
