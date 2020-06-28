#
# VARS file
#

variable "stgaccountName" {
  description = "The name of the storage account."
}

variable "rgName" {
  description = "The name of resource group that the resource will run in."
}

variable "location" {
  description = "The location that the resource will run in."
}

variable "acct_kind" {
  description = "The kind of Storage Account. Default is (StorageV2)"
  default = "StorageV2"
}

variable "acct_tier" {
  description = "The tier of Storage Account. Default is (Standard)"
  default = "Standard"
}

variable "acct_repl" {
  description = "The kind of replication of Storage Account. Default is (LRS)"
  default = "LRS"
}

variable "access_tier" {
  description = "The kind of Access tier of Storage Account. Default is (Cool)"
  default = "Cool"
}

variable "tags" {
  description = "The keys to identity Storage Account"
}
