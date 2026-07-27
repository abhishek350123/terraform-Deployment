variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
  default     = "myWindowsVM"
}

variable "location" {
  type        = string
  description = "Azure region for the VM"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
  default     = "Standard_DS1_v2"
}

variable "nic_name" {
  type        = string
  description = "Name of the network interface"
  default     = "myNIC"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP"
  default     = "myPublicIP"
}

variable "os_disk_name" {
  type        = string
  description = "Name of the OS disk"
  default     = "myOsDisk"
}

variable "computer_name" {
  type        = string
  description = "Computer name"
  default     = "hostname"
}

variable "admin_username" {
  type        = string
  description = "Admin username"
  default     = "adminuser"
  sensitive   = true
}

variable "admin_password" {
  type        = string
  description = "Admin password"
  default     = "P@ssw0rd1234!"
  sensitive   = true
}
