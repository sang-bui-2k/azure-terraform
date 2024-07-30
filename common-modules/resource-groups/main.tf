
resource "azurerm_resource_group" "azurerm_resource_group" {
  name     = var.azurerm_resource_group_name
  location = var.azurerm_resource_group_location
}
