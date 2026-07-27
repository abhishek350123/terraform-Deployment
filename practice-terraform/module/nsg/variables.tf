variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
  default     = "myNSG"
}

variable "location" {
  type        = string
  description = "Azure region for the NSG"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
