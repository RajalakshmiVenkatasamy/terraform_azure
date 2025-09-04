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
