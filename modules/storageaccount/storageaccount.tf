resource "azurerm_storage_account" "viswastorageaccount" {
    name =  var.storageaccount.name
    resource_group_name = var.resourcegroup
    location            =   var.location
    account_tier = var.storageaccount.account_tier
    account_replication_type = var.storageaccount.account_replication_type
    tags = var.tags
}