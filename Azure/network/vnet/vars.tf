#
# VARS file
#

variable "vnetName" {
  description = "The name of the virtual network."
}

variable "rgName" {
  description = "The name of resource group that the resource will run in."
}

variable "location" {
  description = "The location that the resource will run in."
}

variable "address_space" {
  description = "Adresses Space of the network. Default is (192.168.200.0/24)"
  default = ["192.168.200.0/24"]
}

variable "tags" {
  description = "The keys to identity Storage Account"
}
