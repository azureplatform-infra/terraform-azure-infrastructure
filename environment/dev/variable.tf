variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}


variable "subnets" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "vnets" {
  type = map(object({
    vnet-name           = string
    resource_group_name = string
    address_space       = list(string)
    location            = string
  }))
}


variable "natgateway" {
  type = map(object({
    nat_gateway_name     = string
    location             = string
    resource_group_name  = string
    subnet_id            = string
    virtual_network_name = string
  }))
}





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

variable "pip" {
  type = map(object({
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    pip_name             = string
    bastion_name         = string
  }))
}