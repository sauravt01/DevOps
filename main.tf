module "resourceGroups" {
  source = "../Azure_Resource_group"
  rg_name = var.mera_rg
  rg_location = var.mera_location


}


module "virtualNetworks" {
  
  depends_on = [module.resourceGroups]
   
   source = "../Azure_Vnet"
   
   Azure_Vnet_name = var.mera_vnet_name
    resource_group_name = var.mera_rg
    location = var.mera_location
    address_space = var.mera_add_space
  
}

module "subnets" {

  depends_on = [module.virtualNetworks]

  source     = "../Azure_Subnet"

   subnet_name = var.mera_subnet_name
    address_prefixes = var.mera_address_prefixes
    virtualNetworks_name = var.mera_vnet_name
    resource_group_name = var.mera_rg
    location = var.mera_location

}


module "azurerm_linux_virtual_machine" {

  depends_on = [module.subnets]
  source     = "../Azure_Linux_Virtual_Machine"
  virtual_network_name = var.mera_vnet_name
  resource_group_name = var.mera_rg
  location = var.mera_location
  admin_username = var.admin_username
  admin_password = var.password
}