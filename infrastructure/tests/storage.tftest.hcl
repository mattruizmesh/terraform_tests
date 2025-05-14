

provider "azurerm" {
  features {}
  subscription_id = "96de2334-ebc2-465f-aa5c-29eb35ad9510"
}

run "storage_tests" {
  command = plan

  module {
    source = "./modules/storage"
  }

  variables {
    resource_group_name = "rg-terraformtests-dv"
    env                 = "dev"
    location            = "eastus"
    storage_account_name = "storage8675fefe"
  }

  assert {
    condition = azurerm_storage_account.storage.public_network_access_enabled == true
    error_message = "Public network access should be enabled for the storage account"
  }

  assert {
    condition = azurerm_storage_account.storage.account_tier == "Standard"
    error_message = "Account tier should be Standard"
  }
}