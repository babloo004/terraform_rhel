resource "azurerm_virtual_network" "azvm" {
    name = "terra-virtual-network"
    location = module.resource_group.location
    resource_group_name = module.resource_group.name
    address_space = ["192.168.0.0/16"]
    

    subnet {
        name = "front_end"
        address_prefixes = ["192.168.1.0/24"]
        security_group = azurerm_network_security_group.aznsg.id
    }

    subnet {
        name = "back_end"
        address_prefixes = ["192.168.2.0/24"]
        security_group = azurerm_network_security_group.aznsg.id
    }

    subnet {
        name = "testing"
        address_prefixes = ["192.168.3.0/24"]
        security_group = azurerm_network_security_group.aznsg.id
    }

    subnet {
        name = "prod"
        address_prefixes = ["192.168.4.0/24"]
        security_group = azurerm_network_security_group.aznsg.id
    }
}