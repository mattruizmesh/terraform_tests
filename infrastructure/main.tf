terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.17.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name   = "rg-statefiles-dv"
    storage_account_name  = "mattstatefiles"
    container_name        = "tfstate"
    key                   = "terraformtesting.tfstate"
    
  }
}

provider "azurerm" {
  features {
    # Azurerm provider specific configurations
  }
  # Should probably be provided by a variable
  subscription_id = "96de2334-ebc2-465f-aa5c-29eb35ad9510"
}

locals {
  # Local variables
  storage_account_name = ""
  location            = "eastus"
  resource_group_name = "rg-terraformtests-dv"
  env                 = "dev"
}

module "storage" {
  source = "./modules/storage"

  resource_group_name      = local.resource_group_name
  location                 = local.location
  env                      = local.env
  storage_account_name     = local.storage_account_name
  
}