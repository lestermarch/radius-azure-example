# Radius Azure Example

This repo contains an example Radius recipe, written in Terraform, to deploy Azure resources.
See [Author a Radius Recipe](https://docs.radapp.io/guides/recipes/howto-author-recipes/) for more details.

## Input and Outputs

This Terraform module is written as a Radius recipe, and as such differs from convention with regards to input variables and outputs:

- Radius provides an input `context` at deployment time; an object with information about the deployment context. See [Radius Context Schema](https://docs.radapp.io/reference/context-schema/) for more details.

- Radius expects an output `result` post-deployment; an object describing output `values`, `secrets`, and `resources` for use by Radius in conjunction with other modules. The `result` output is set to sensitive to mask potential secret values from deployment output.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.85.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | The base CIDR range used for the virtual network | `string` | `"172.16.0.0/12"` | no |
| <a name="input_context"></a> [context](#input\_context) | Radius-provided object containing information about the resource calling the Recipe.<br>See [Radius Context Schema](https://docs.radapp.io/reference/context-schema/) for details. | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure region into which resources will be deployed | `string` | `"uksouth"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The Azure resource group into which resources will be deployed | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_result"></a> [result](#output\_result) | The result of the Recipe. Must match the target resource's schema.<br>See [Author a Radius Recipe](https://docs.radapp.io/guides/recipes/howto-author-recipes/#step-3-output-the-result) for details. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
