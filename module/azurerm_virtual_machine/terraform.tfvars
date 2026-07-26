vms = {
  vm1 = {
    vm-name              = "frontend-vm"
    resource_group_name  = "pr-resource-group"
    location             = "eastus"
    size                 = "Standard_D2s_v5"
    admin_username       = "adminuser"
    admin_password       = "ajju@@@###1991"
    subnet_id            = "frondend-subnet"
    nic-name             = "nic-front-end-vm"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts-gen2"
    version              = "22.04.20240718"
    virtual_network_name = "pr-vnet"

  }
  vm2 = {
    vm-name              = "backend-vm"
    resource_group_name  = "pr-resource-group"
    location             = "eastus"
    size                 = "Standard_D2s_v5"
    admin_username       = "adminuser"
    admin_password       = "ajju@@@###1991"
    subnet_id            = "backend-subnet"
    nic-name             = "nic-backend-vm"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "MicrosoftWindowsServer"
    offer                = "WindowsServer"
    sku                  = "2022-Datacenter"
    version              = "2022.18.20260618"
    virtual_network_name = "pr-vnet"
  }
}
