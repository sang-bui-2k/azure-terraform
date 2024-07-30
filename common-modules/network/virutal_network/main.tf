resource "azurerm_virtual_network" "arm_virtual_network" {
  name                = var.arm_virtual_network_name
  address_space       = var.arm_virtual_network_address_space ## ["10.1.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}
