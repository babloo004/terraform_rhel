module "resource_group" {
    source = "../resource"
}

data "azurerm_network_interface" "aznic" {
    name = "prof-nic"
    resource_group_name = module.resource_group.name
}