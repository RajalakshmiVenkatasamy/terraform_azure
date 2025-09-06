variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "my-terraform-rg"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}
variable "storage_account_name" {
  type    = string
  default = "mytfstorageacct98765"
}

variable "container_name" {
  description = "Name of the Storage Container"
  type        = string
  default     = "tfstatecontainer"
}
