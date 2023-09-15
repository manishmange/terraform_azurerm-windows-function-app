terraform {
  required_version = ">=1.5.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.72.0"
    }

  }
}

provider "azurerm" {
  features {}
  client_id       = "b0853fe9-5ee5-487e-91b0-b204408dbd55"
  client_secret   = "xHg8Q~GKVZIO8hWz3ZoG_fzpfwDOPy2U_sdoSats"
  tenant_id       = "16aa0de8-c2b3-4d63-878a-6c4ffa40cb47"
  subscription_id = "bf39820f-d155-4fb0-af7b-e5b2cb06ffa4"
}