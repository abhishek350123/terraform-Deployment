# Call the Resource Group module
module "resource_group" {
  source = "./module/resource_group"

  resource_group_name = "myResourceGroup"
  location            = "malaysiawest"
}

# Call the Virtual Network module
module "vnet" {
  source = "./module/vnet"

  vnet_name           = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

# Call the Subnet module
module "subnet" {
  source = "./module/subnet"

  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.vnet.vnet_name
  depends_on           = [module.vnet]
}

# Call the Network Security Group module
module "nsg" {
  source = "./module/nsg"

  nsg_name            = "myNSG"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  depends_on          = [module.resource_group]
}

# Call the Compute module
module "compute" {
  source = "./module/compute"

  vm_name             = "myWindowsVM"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet.compute_subnet_id
  vm_size             = "Standard_DS1_v2"
  nic_name            = "myNIC"
  public_ip_name      = "myPublicIP"
  os_disk_name        = "myOsDisk"
  computer_name       = "hostname"
  admin_username      = "adminuser"
  admin_password      = "P@ssw0rd1234!"
  depends_on          = [module.subnet]
}
