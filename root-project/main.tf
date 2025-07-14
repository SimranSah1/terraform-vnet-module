provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source = "git::https://github.com/SimranSah1/terraform-vnet-module.git?ref=v1.0.0"

  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  subnets             = var.subnets
  tags                = var.tags
}
