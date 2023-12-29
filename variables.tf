variable "context" {
  description = <<-EOT
  Radius-provided object containing information about the resource calling the Recipe.
  See [Radius Context Schema](https://docs.radapp.io/reference/context-schema/) for details.
  EOT
  type        = any
}
