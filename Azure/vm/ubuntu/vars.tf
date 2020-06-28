#
# VAR File
#

variable "vmName" {
  description = "The VM Name"
}

variable "vmSize" {}

variable "rgName" {
  description = "The resource group name that VM will run in."
}

variable "location" {
  description = "The location where that VM will run in."
}

variable "vmNicId" {
  description = "The Network interfaces that will be used in that VM."
}

variable "vmAdminUser" {
  description = "Admim user for that VM"
}

variable "sshAdminKey" {
  description = "Admin SSH user Key"
  default ="~/.ssh/id_rsa.pub"
}
variable "tags" {}

