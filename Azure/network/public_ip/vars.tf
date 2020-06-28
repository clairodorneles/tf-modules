variable "pipName" {
  description = "The Public IP name."
}

variable "rgName" {
  description = "The resource group that public ip will be in"
}

variable "location" {
  description = "The location that public ip will run in"
}

variable "aMeth" {
  description = "Kind of IP Allocation Dynamic or Static."
  default = "Dynamic"
}

variable "fqdn" {
  description = "The Fully Qualified Domain Name"
}

variable "tags" {}


