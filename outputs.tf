output "result" {
  description = <<-EOT
  The result of the Recipe. Must match the target resource's schema.
  See [Author a Radius Recipe](https://docs.radapp.io/guides/recipes/howto-author-recipes/#step-3-output-the-result) for details.
  EOT
  sensitive   = true
  value = {
    values    = {}
    secrets   = {}
    resources = []
  }
}
