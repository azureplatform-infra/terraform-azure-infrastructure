variable "vnets" {
  type = map(object({
    vnet-name           = string
    resource_group_name = string
    address_space       = list(string)
    location            = string
  }))
}