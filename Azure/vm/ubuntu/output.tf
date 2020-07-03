output "vm_id" {
  description = "Virtual machine ids created."
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_pip" {
  description = "Virtual machine public ip."
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "vm_name" {
  description = "Virtual machine Name."
  value       = azurerm_linux_virtual_machine.vm.computer_name
}

