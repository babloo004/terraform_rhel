resource "azurerm_linux_virtual_machine" "azlvm" {
  name = "hosr-02-centos"
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  size = "Standard_B1ms"
  admin_username = var.admin_username
  network_interface_ids = [
    data.azurerm_network_interface.aznic.id
  ]

  admin_ssh_key {
    username = "avi04"
    public_key = file("${path.module}/ubuntu_key_pub.pub")
  }

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "almalinux"
    offer     = "almalinux-x86_64"
    sku       = "9-gen2"
    version   = "9.6.202505220" 
  }
}