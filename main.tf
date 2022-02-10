
provider "azurerm" {
  version =  "2.66.0"

  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.clientSecret
  tenant_id = var.tenant_id

  features{}

}


resource "azurerm_resource_group" "rg" {
  name =var.rgName
  location = var.location
}

# Create virtual network
resource "azurerm_virtual_network" "TFCNet" {
    name                = "TFC-VNet1"
    address_space       = ["10.1.0.0/16"]
    location            =  azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name 

    tags = {
        environment = "TFC test"
    }
}

# Create subnet
resource "azurerm_subnet" "subnet1" {
    name                 = "TFCSubnet"
    resource_group_name = azurerm_resource_group.rg.name  
    virtual_network_name = azurerm_virtual_network.TFCNet.name
    address_prefix       = "10.1.1.0/24"
}

