output "rgName" {
  description = "The resource group for resources"
  value = var.rgName
  type = string
}

output "location" {
  description = "The location for resources"
  value = var.location
  type = string
}

output "subnet1_id" {
  description = "The location for resources"
  value = azurerm_subnet.subnet1.id
  type = string
}
