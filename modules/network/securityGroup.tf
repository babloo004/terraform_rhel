resource "azurerm_network_security_group" "aznsg" {
    name = "host-02-sg"
    location = module.resource_group.location
    resource_group_name = module.resource_group.name

    security_rule {
        name = "allow_ssh"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name = "allow_all_outbound"
        priority = 100
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    lifecycle {
      create_before_destroy = true
    }
}