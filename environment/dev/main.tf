# module "resources_groups" {
#   source = "../../common-modules/resource-groups"

#   azurerm_resource_group_location = var.azurerm_resource_group_location
#   azurerm_resource_group_name     = var.azurerm_resource_group_name
# }

module "key_vaults" {
  source = "../../common-modules/key-vaults"

  # azurerm_key_vault_name          = var.azurerm_key_vault_name
  # enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  # tenant_id                       = var.tenant_id
  # soft_delete_retention_days      = var.soft_delete_retention_days
  # azurerm_resource_group_location = module.resources_groups.azurerm_resource_group_location
  # azurerm_resource_group_name     = module.resources_groups.azurerm_resource_group_name
}
