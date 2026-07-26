natgateway = {
  gateway = {
    nat_gateway_name     = "natgateway"
    location             = "eastus"
    resource_group_name  = "pr-resource-group"
    subnet_id            = "frondend-subnet"
    virtual_network_name = "pr-vnet"
  }
  gateway2 = {
    nat_gateway_name     = "natgateway"
    location             = "eastus"
    resource_group_name  = "pr-resource-group"
    subnet_id            = "backend-subnet"
    virtual_network_name = "pr-vnet"
  }
}
