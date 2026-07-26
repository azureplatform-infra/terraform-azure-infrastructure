pip = {
  pip1 = {
    location             = "eastus"
    resource_group_name  = "pr-resource-group"
    subnet_name          = "AzureBastionSubnet"
    virtual_network_name = "pr-vnet"
    pip_name             = "bastion-pip"
    bastion_name         = "bastion"
  }
}
