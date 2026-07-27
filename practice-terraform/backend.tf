terraform {
  backend "azurerm" {
    resource_group_name  = "rg-test-eastasia"
    storage_account_name = "statesteastasia012"
    container_name       = "backendcontainer"
    key                  = "terraform.tfstate"
  }
}