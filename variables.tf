variable "mutating_webhook_configuration_v1_lookup" {
  description = <<EOT
Map of mutating_webhook_configuration_v1_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
EOT

  type = map(object({
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

