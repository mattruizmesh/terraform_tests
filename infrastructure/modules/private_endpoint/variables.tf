variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraformtests-dv"
}

variable "location" {
  description = "Location of the resources"
  type        = string
  default     = "eastus"
}

variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "resource_name" {
  description = "Name of the resource"
  type        = string
  default     = "storage8675fefe"
}

variable "resource_id" {
  description = "value of the resource id"
  type        = string
}

variable "subresource_name" {
  description = "Name of the subresource"
  type        = string
  default     = "blob"
}

variable "subnet_id" {
  description = "value of the subnet id"
  type        = string
  default = "test-subnet-id"
}