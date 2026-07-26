subnets = {
  "subnet1" = {
    subnet_name          = "frondend-subnet"
    resource_group_name  = "pr-resource-group"
    virtual_network_name = "pr-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  "subnet2" = {
    subnet_name          = "backend-subnet"
    resource_group_name  = "pr-resource-group"
    virtual_network_name = "pr-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  "subnet3" = {
    subnet_name          = "database-subnet"
    resource_group_name  = "pr-resource-group"
    virtual_network_name = "pr-vnet"
    address_prefixes     = ["10.0.3.0/24"]
  }
  "subnet4" = {
    subnet_name          = "app-gateway-subnet"
    resource_group_name  = "pr-resource-group"
    virtual_network_name = "pr-vnet"
    address_prefixes     = ["10.0.4.0/24"]
  }
  "subnet5" = {
    subnet_name          = "AzureBastionSubnet"
    resource_group_name  = "pr-resource-group"
    virtual_network_name = "pr-vnet"
    address_prefixes     = ["10.0.5.0/24"]
  }
}