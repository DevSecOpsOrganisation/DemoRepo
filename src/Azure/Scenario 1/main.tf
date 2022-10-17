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
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}