terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.4.0"
    }
  }
}

provider "azurerm" {
}

module "resourcegroup" {
    source = "../Modules/resourcegroup"
    location = var.location
    resourcegroup = var.resourcegroup
    tags = var.tags
}

module "storageaccount" {
    source = "../Modules/storageaccount"
    location = var.location
    tags = var.tags
    storageaccount = var.storageaccount
    resourcegroup = module.resourcegroup.rgname
}