provider "azurerm" {
  features {}
}
resource "azurerm_network_security_group" "Scenario1" {
  name                = "Scenario1"
  location            = "East US"
  resource_group_name = "devsecops-resources"
  security_rule {
    name                       = "Scenario1"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = var.all_protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name = "AllowSingleSourcePort_Inbound"
    priority = 110
    direction = "Inbound"
    access = "Allow"
    protocol = var.udp_protocol
    source_port_range = "*"
    destination_port_range = "389"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name = "Scenario3_udp"
    priority = 130
    direction = "Inbound"
    access = "Allow"
    protocol = var.udp_protocol
    source_port_range = "*"
    destination_port_range = "3300-3400"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "Scenario11"
    priority                   = 210
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = var.all_protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
