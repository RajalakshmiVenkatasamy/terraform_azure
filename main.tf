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





