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