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

# App Service Plan with tags
resource "azurerm_app_service_plan" "asp" {
  name                = "my-app-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  kind     = "App"      
  reserved = false      

 sku {
    tier = "Free"       
    size = "F1"
  }

  tags = {
    Environment = "Dev"
    Project     = "TerraformDemo"
  }
}





