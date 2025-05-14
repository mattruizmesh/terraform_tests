variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraformtests-dv"
}

variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
  
}

variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "storage8675fefe"
}