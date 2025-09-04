resource "azurerm_resource_group" "rg" {
  name     = "my-terraform-rg"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "myterraformstorage123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
