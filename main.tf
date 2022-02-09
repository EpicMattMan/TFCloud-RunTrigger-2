provider "azurerm" {
  version =  "2.66.0"

  features{}

}

resource "azurerm_resource_group" "rg" {
  name = var.rgName
  location = var.location
}

