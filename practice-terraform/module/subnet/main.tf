resource "azurerm_subnet" "subnet1" {
  name                 = "FirewallSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "VpngatewaySubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.2.0/24"]
  depends_on = [ azurerm_subnet.subnet1 ]
}

resource "azurerm_subnet" "subnet3" {
  name                 = "computeSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.3.0/24"]
  depends_on = [ azurerm_subnet.subnet2 ]
}
