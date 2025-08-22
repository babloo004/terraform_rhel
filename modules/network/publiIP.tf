resource "azurerm_public_ip" "azip" {
  name = "host-02"
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  allocation_method = "Static"
}