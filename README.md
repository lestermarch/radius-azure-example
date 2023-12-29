# Radius Azure Example

This repo contains an example Radius recipe, written in Terraform, to deploy Azure resources.
See [Author a Radius Recipe](https://docs.radapp.io/guides/recipes/howto-author-recipes/) for more details.

## Input and Outputs

This Terraform module is written as a Radius recipe, and as such differs from convention with regards to input variables and outputs:

- Radius provides an input `context` at deployment time; an object with information about the deployment context. See [Radius Context Schema](https://docs.radapp.io/reference/context-schema/) for more details.

- Radius expects an output `result` post-deployment; an object describing output `values`, `secrets`, and `resources` for use by Radius in conjunction with other modules. The `result` output is set to sensitive to mask potential secret values from deployment output.
