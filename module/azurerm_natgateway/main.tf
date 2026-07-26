data "azurerm_resource_group" "name" {
  for_each = var.natgateway
  name     = each.value.resource_group_name
}

data "azurerm_subnet" "name" {
  for_each             = var.natgateway
  name                 = each.value.subnet_id
  resource_group_name  = data.azurerm_resource_group.name[each.key].name
  virtual_network_name = each.value.virtual_network_name
}

resource "azurerm_nat_gateway" "nat_gateway_id" {

  for_each            = var.natgateway
  name                = each.value.nat_gateway_name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.name[each.key].name
  sku_name            = "Standard"
}

resource "azurerm_subnet_nat_gateway_association" "subnet_nat_gateway" {

  for_each       = var.natgateway
  subnet_id      = data.azurerm_subnet.name[each.key].id
  nat_gateway_id = azurerm_nat_gateway.nat_gateway_id[each.key].id
}

