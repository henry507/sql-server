variable "location" {
  default     = "westeurope"
  description = "The location where the resources should be created."
    nullable    = false
  type        = string
}

variable "resource_group_name" {
  description = "The resource group the sql server should be placed in. "
  nullable    = false
  type        = string
}
variable "server_name" {
  description = "Name of the server. "
}

variable "database_name" {
  description = "Name on the initial database on the server. "
}

variable "tags" {
description = "The tags to assign to the resources"
  nullable    = false
  type        = map(string)
}
