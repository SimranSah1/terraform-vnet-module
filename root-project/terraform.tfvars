rg_name             = "shared-vnet-rg"
location            = "East US"
vnet_name           = "shared-vnet"
vnet_address_space  = "10.0.0.0/16"
subnets = {
  subnet1 = ["10.0.1.0/24"]
  subnet2 = ["10.0.2.0/24"]
}
tags = {
  Owner = "Simran"
  Environment = "Dev"
}
