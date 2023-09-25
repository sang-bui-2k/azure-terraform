output "resource_group_name" {
  description = "Name of the resource group created by the module"
  value       = azurerm_resource_group.azurerm_resource_group.name
}

output "resource_group_location" {
  description = "Location of the resource group created by the module"
  value       = azurerm_resource_group.azurerm_resource_group.location
}
