resource "azurerm_resource_group" "this" {
  name     = var.name
  location = "West Europe"
}

resource "azurerm_storage_account" "this" {
  name                            = var.storage_account_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  account_tier                    = "Standard"
  account_kind                    = "StorageV2"
  account_replication_type        = "GZRS"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
  tags                            = var.tags
}


resource "azurerm_sql_server" "this" {
  name                         = var.name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  admin_enabled                = var.admin_enabled
  tags                         = var.tags
}
