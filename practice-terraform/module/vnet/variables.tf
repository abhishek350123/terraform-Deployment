variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "myVnet"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "location" {
  type        = string
  description = "Azure region for the virtual network"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
