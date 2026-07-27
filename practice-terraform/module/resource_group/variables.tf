variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "myResourceGroup"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "malaysiawest"
}
