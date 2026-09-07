resource "azurerm_resource_group" "rggroup" {
  name     = "my_resource_group"
  location = "southeastasia"
  
}

resource "azurerm_virtual_network" "vnet" {
  name                = "my_vnet"
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.rggroup.location
  resource_group_name = azurerm_resource_group.rggroup.name
}
resource "azurerm_subnet" "subnet" {
  name                 = "my_subnet"
  resource_group_name  = azurerm_resource_group.rggroup.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.0.0/24"]
}
resource "azurerm_network_security_group" "nsg" {
  name                = "my_nsg"
  location            = azurerm_resource_group.rggroup.location
  resource_group_name = azurerm_resource_group.rggroup.name
}
resource "azurerm_network_interface" "nic" {
  name                = "my_nic"
  location            = azurerm_resource_group.rggroup.location
  resource_group_name = azurerm_resource_group.rggroup.name
  ip_configuration {
    name                          = "my_ip_config"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
