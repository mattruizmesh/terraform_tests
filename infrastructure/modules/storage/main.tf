resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.env
    created_by   = "Terraform"
  }
  
}

# module "stg_private_endpoint" {
#   source = "../private_endpoint"
#   env = var.env
#   resource_name = azurerm_storage_account.storage.name
#   resource_group_name = var.resource_group_name
#   location = var.location
#   resource_id = azurerm_storage_account.storage.id
#   subresource_name = "blob"
#   depends_on = [azurerm_storage_account.storage]
# }