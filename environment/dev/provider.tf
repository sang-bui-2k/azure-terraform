terraform {
  # backend "azurerm" {
  #   storage_account_name = "cs110030000adce0376"
  #   container_name       = "staging-tfstate"
  #   key                  = "staging.tfstate"
  #   access_key           = "BZgsLpMYX3dmvR/xY2Ut2f9OQqvty8xp11n7/YF4Zv5oFeTq7V+n3Tqa++kOWWpe5/tDSHSh7TLSiXiJOh2CHg=="
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.99.0"
    }
  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = "73ee564b-b0eb-408a-bf1a-63093385ae0b"
}
