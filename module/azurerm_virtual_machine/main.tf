data "azurerm_subnet" "subnet" {
  for_each = var.vms

  name                 = each.value.subnet_id
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

resource "azurerm_network_interface" "nic" {
  for_each            = var.vms
  name                = each.value.nic-name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vms
  name                            = each.value.vm-name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = each.value.admin_username
  disable_password_authentication = false
  admin_password                  = each.value.admin_password
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}
