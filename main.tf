terraform {
  required_version = "~> 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${local.resource_name_suffux}"
  location            = var.location
  resource_group_name = local.resource_group_name

  address_space = [var.address_space]
}
