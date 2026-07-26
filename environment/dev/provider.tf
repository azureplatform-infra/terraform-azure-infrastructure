terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {
 resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id = "94071485-796a-4f7e-9205-381343d2a695"
}

provider "azuread" {
  tenant_id = "7f0e3cdd-4bca-4b2a-b60b-25d92b42f5a7"
}
