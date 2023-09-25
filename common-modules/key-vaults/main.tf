data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "azurerm_resource_group" {
  name     = "azure-dev-rg"
  location = "Southeast Asia"
}

resource "azurerm_key_vault" "azurerm_key_vault" {
  name                        = "azure-dev-keyvault-rs"
  location                    = azurerm_resource_group.azurerm_resource_group.location
  resource_group_name         = azurerm_resource_group.azurerm_resource_group.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}
