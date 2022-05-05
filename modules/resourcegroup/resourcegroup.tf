resource "azurerm_resource_group" "viswaresource" {
    name      = var.resourcegroup.name
    location  = var.location
    tags      = var.tags
}

output "rgname" {
    value = azurerm_resource_group.viswaresource.name
}