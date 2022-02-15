output "rgName" {
  description = "The resource group for resources"
  value = var.rgName
}

output "location" {
  description = "The location for resources"
  value = "canada central"
}

output "subnet1_id" {
  description = "The location for resources"
  value = azurerm_subnet.subnet1.id
}
