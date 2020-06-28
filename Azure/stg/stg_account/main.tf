#
# Storage Account
#

resource "azurerm_storage_account" "stg-account" {
  name                      = var.stgaccountName
  resource_group_name       = var.rgName
  location                  = var.location
  account_kind              = var.acct_kind
  account_tier              = var.acct_tier
  account_replication_type  = var.acct_repl
  access_tier               = var.access_tier
  enable_https_traffic_only = true
  tags                      = var.tags
}

