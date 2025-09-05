terraform {
  backend "azurerm" {
    # Resource group that contains the storage account for Terraform state
    resource_group_name  = "terraform-RG"

    # Storage account name
    storage_account_name = "terraformstorage23"

    # Container name inside the storage account
    container_name       = "storagecontainer"

    # The state file name
    key                  = "terraform.tfstate"
  }
}
