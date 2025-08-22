data "azurerm_subnet" "azsn" {
    name = "prod"
    virtual_network_name = "terra-virtual-network"
    resource_group_name = module.resource_group.name
}