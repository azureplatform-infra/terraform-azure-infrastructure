variable "natgateway" {
  type = map(object({
    nat_gateway_name     = string
    location             = string
    resource_group_name  = string
    subnet_id            = string
    virtual_network_name = string
  }))
}
