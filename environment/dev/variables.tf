# Resources Groups
variable "azurerm_resource_group_name" {
  type = string
}

variable "azurerm_resource_group_location" {
  type = string
}

# Key-vaults
variable "azurerm_key_vault_name" {
  type = string
}

variable "enabled_for_disk_encryption" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "soft_delete_retention_days" {
  type = number
}
