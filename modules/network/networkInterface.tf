resource "azurerm_network_interface" "azni" {
    name = "prof-nic"
    location = module.resource_group.location
    resource_group_name = module.resource_group.name

    ip_configuration {
      name = "host2"
      subnet_id = data.azurerm_subnet.azsn.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.azip.id
    }

    lifecycle {
      create_before_destroy = true
    }
}