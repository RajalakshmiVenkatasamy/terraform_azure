terraform {
  required_version = ">= 1.5.0"

  required_providers {
     azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "my-terraform-rg"
  location = var.location
}

# Create Storage Account
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Dev"
    Project     = "TerraformDemo"
  }
}

# Create Storage Container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}




