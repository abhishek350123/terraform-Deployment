terraform {
  backend "azurerm" {
    resource_group_name  = "rg-assessment"
    storage_account_name = "azuretest512"
    container_name       = "mycontainer654"
    key                  = "terraform.tfstate"
    
  }
}