output "snet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_subnet.subnet.id
}

output "snet_name" {
  description = "The id of the newly created vNet"
  value       = azurerm_subnet.subnet.name
}

output "snet_prfx" {
  description = "The id of the newly created vNet"
  value       = azurerm_subnet.subnet.address_prefix
}