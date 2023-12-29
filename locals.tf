locals {
  # Generate a unique ID for the resource name suffix
  resource_name_suffux = sha512(var.context.resource.id)

  # Use the context resource group if an explicit resource group is not provided
  resource_group_name = (
    var.resource_group_name != null ?
    var.resource_group_name :
    var.context.azure.resourceGroup
  )
}
