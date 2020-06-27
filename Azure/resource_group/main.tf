# new terraform module

resource "azurerm_resource_group" "rg" {
 name =  var.rgName
 location= var.location
}


