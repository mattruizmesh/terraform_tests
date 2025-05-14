resource "azurerm_private_endpoint" "pe" {
  name                = "pe-${var.env}-${var.resource_name}"
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet_id = var.subnet_id

  private_service_connection {
    name                           = "pe-${var.env}-${var.resource_name}-connection"
    private_connection_resource_id = var.resource_id
    is_manual_connection           = false
    subresource_names              = [var.subresource_name]
  }
}