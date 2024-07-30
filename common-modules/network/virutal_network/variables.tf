# modules/network/virtual_network/variables.tf
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}

variable "arm_virtual_network_name" {
  type = string
}

variable "arm_virtual_network_address_space" {
  type = string
}