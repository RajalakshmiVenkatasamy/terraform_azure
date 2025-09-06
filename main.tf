terraform {
  required_version = ">= 1.5.0"

  required_providers {
     azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}


resource "azurerm_resource_group" "rg" {
  name     = "my-terraform-rg"
  location = var.location
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "myterraformstorage23"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "myterraformcontainer"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}



