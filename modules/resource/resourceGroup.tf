data "azurerm_resource_group" "azrg" {
    name = "terra"
}

output "name" {
    value = data.azurerm_resource_group.azrg.name
}

output "location" {
  value = data.azurerm_resource_group.azrg.location
}