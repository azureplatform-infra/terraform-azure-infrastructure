module "resource_group" {
  source          = "../../module/azurerm_resource_group"
  resource_groups = var.rg
}

module "subnet" {
  depends_on = [module.resource_group]
  source     = "../../module/azuerrm_resource_subnet"
  subnets    = var.subnets
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtulnetwork"
  vnets      = var.vnets
}

module "natgateway" {
  depends_on = [module.subnet]
  source     = "../../module/azurerm_natgateway"
  natgateway = var.natgateway
}


module "vm" {
  depends_on = [module.subnet]
  source     = "../../module/azurerm_virtual_machine"
  vms        = var.vms
}

module "bastion" {
  depends_on = [module.subnet]
  source     = "../../module/azurerm_bastion"
  pip        = var.pip
}

