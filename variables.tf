variable "address_space" {
  default     = "172.16.0.0/12"
  description = "The base CIDR range used for the virtual network"
  type        = string
}

variable "context" {
  description = <<-EOT
  Radius-provided object containing information about the resource calling the Recipe.
  See [Radius Context Schema](https://docs.radapp.io/reference/context-schema/) for details.
  EOT
  type        = any
}

variable "location" {
  default     = "uksouth"
  description = "The Azure region into which resources will be deployed"
  type        = string
}

variable "resource_group_name" {
  default     = null
  description = "The Azure resource group into which resources will be deployed"
  type        = string
}
