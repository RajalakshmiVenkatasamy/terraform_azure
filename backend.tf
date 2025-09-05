terraform {
  backend "azurerm" {  
    resource_group_name  = "terraform-RG"  
    storage_account_name = "terraformstorage23"  
    container_name       = "storagecontainer"    
    key                  = "terraform.tfstate"
  }
}
