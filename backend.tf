terraform {
  backend "azurerm" {
    resource_group_name  = "my-terraform-rg"      
    storage_account_name = "myterraformstorage23"
    container_name       = "myterraformcontainer"
    key                  = "terraform.tfstate"
  }
}
