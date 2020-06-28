resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vmName
  resource_group_name = var.rgName
  location            = var.location
  size                = var.vmSize
  admin_username      = var.vmAdminUser
  network_interface_ids = [
    var.vmNicId,
  ]

  admin_ssh_key {
    username   = var.vmAdminUser
    public_key = file(var.sshAdminKey)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  tags = var.tags
}



