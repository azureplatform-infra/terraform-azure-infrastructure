variable "vms" {
  type = map(object({
    vm-name              = string
    resource_group_name  = string
    location             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    subnet_id            = string
    nic-name             = string
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
    virtual_network_name = string
  }))
}
